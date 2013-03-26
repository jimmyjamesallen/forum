class UsersController < ApplicationController
  before_filter :authenticate_user!, :only => [:index,:new,:edit]
  #before_filter :accessible_roles, :only => [:new, :edit, :show, :update, :create]

  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /students/1
  # GET /students/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @users }
    end
  end
end
