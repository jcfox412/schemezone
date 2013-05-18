class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url
    else
      render :new
    end
  end

  def add_scheme
    if @current_user
      @scheme = Scheme.find(params[:scheme_id])

      UserEvent.create_if_not_exists(@current_user,@scheme.event.id, params[:left], params[:top])
      @scheme.users << @current_user

      respond_to do |format|
        format.json { render json: @scheme }
      end
    end
  end
end
