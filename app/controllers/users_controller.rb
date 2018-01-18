class UsersController < ApplicationController
  include Response
  include ExceptionHandler
  before_action :set_user, only: [:show, :update, :destroy]
  before_action :locate_collection, only: [:index]

  # GET /users
  # GET /users.json
  def index
    json_response(@users)
  end

  # GET /users/1
  # GET /users/1.json
  def show
    render :json => @user, status: :ok
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    if @user.save
    	render :json => @user, status: :created
    else
    	render :json => @user.errors.as_json(full_messages: true), status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    if @user.update(user_params)
    	render :json => @user, status: :created
    else
    	render :json => @user.errors.as_json(full_messages: true), status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username, :status, :age, :city, :avatar_url)
    end

    def locate_collection
      @users = User.filter(filtering_params)
    end

    def filtering_params
      params.slice(:username)
    end
end
