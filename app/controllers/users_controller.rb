class UsersController < ApplicationController

  def edit
  end

  def update
     
      # 更新成功時、トップページ表示
      # 失敗時、情報を維持しつつ同じページを表示
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end

        
  end

  private
  # ストロングパラメータ
  def user_params
    params.require(:user).permit(:name, :email) 
  end

end
