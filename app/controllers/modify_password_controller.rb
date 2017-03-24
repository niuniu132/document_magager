class ModifyPasswordController < ApplicationController
    before_action :authenticate_user!

    def edit
      @user = User.find(params[:id])
    end

    def update
      @user = User.find(params[:id])
      if @user.update(modify_password_params)
        redirect_to root_path
        flash[:notice]='密码修改成功！'
      else
        render :edit
      end
    end




    private

    def modify_password_params
      params.require(:user).permit(:password, :password_confirmation)
    end


end
