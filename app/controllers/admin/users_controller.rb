class Admin::UsersController < ApplicationController
  def suspend
    @user.suspend! 
    redirect_to users_path
  end

  def unsuspend
    @user.unsuspend! 
    redirect_to users_path
  end

  def destroy
    @user.delete!
    redirect_to users_path
  end

  def purge
    @user.destroy
    redirect_to users_path
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
end
