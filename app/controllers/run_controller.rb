require 'timeout'

class RunController < ApplicationController
    def run_python
        code = params[:code].gsub "'", "\\'"
        # result = `python scripts/run_python.py "#{code}" 2>&1`
        r, w = IO.pipe
        pid = Process.spawn("python scripts/run_python.py '#{code}' 2>&1", :out => w)
        # pid = Process.spawn('sleep 20')
        w.close

        begin
        Timeout.timeout(5) do
            Process.wait(pid)
        end
        rescue Timeout::Error
        Process.kill('TERM', pid)
        puts 'Killed process'
        r.close
        return render json: {
            result: 'Womp womp ... Hiciste un loop infinito! Arréglalo pls'
        }
        end

        result = r.read
        r.close

        render json: {
            result: result
        }
    end
end
