class Admin::UsersController < ApplicationController
  before_filter :find_user, :only => [:suspend, :unsuspend, :destroy, :purge]
  after_filter :redirect_to_index, :only => [:suspend, :unsuspend, :destroy, :purge]
  before_filter :admin_required
  
  def suspend
    @user.suspend! 
  end

  def unsuspend
    @user.unsuspend! 
  end

  def destroy
    @user.delete!
  end

  def purge
    @user.destroy
  end

  def index
    @users = User.find(:all)
  end

  def edit
    @user = find_user
  end

  def update
    @user = find_user
    @user.update_attributes(params[:user])
    @user.save()
    if @user.errors.empty?
      redirect_back_or_default('/')
      flash[:notice] = "Successfully changed settings."
    else
      flash[:error] = "Something went wrong"
      render :action => 'edit'
    end
  end
  
  protected
    def find_user
      @user = User.find(params[:id])
    end

    def redirect_to_index
      redirect_to admin_users_path
    end
end
