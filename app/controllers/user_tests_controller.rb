class UserTestsController < ApplicationController
  before_action :set_user_test, only: [:show, :update, :destroy]

  # GET /user_tests
  def index
    @user_tests = UserTest.all

    render json: @user_tests
  end

  # GET /user_tests/1
  def show
    render json: @user_test
  end

  # POST /user_tests
  def create
    @user_test = UserTest.new(user_test_params)

    if @user_test.save
      render json: @user_test, status: :created, location: @user_test
    else
      render json: @user_test.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_tests/1
  def update
    if @user_test.update(user_test_params)
      render json: @user_test
    else
      render json: @user_test.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_tests/1
  def destroy
    @user_test.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_test
      @user_test = UserTest.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_test_params
      params.require(:user_test).permit(:test_id, :user_id, :score)
    end
end
