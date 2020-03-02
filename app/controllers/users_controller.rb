class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    render json: user.to_json(
      :include => {:restaurants =>
        {:except => [:created_at, :updated_at]}}
    )
  end
end
