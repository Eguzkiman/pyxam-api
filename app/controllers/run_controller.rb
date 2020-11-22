class RunController < ApplicationController
    def run_python
        code = params[:code].gsub '"', '\\"'
        result = `python scripts/run_python.py "#{code}" 2>&1`
        render json: {
            result: result
        }
    end
end
