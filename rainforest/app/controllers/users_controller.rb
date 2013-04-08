class UsersController < ApplicationController
  #GET /users/new
  def new
  	@user = User.new
  end

  #POST /users
  def create
  	    @user = User.new(params[:user])
      if @user.save
        #redirect (move the browser) to /user/#{@user.id}
          redirect_to products_path, notice: 'Account created successfully.'
      else
        #just show the new action's view
        render action: :new
      end
  end
end
