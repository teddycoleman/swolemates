class UsersController < ApplicationController
	def create
		@user = User.new(user_params)

		if @user.valid?
			@user.save
			flash[:success] = "New Swolemate account created. What's up!"
			session[:user_id] = @user.id
			redirect_to user_path(@user)
		else
			flash[:error] = @user.errors.full_messages.join(". ")
			redirect_to root_path
		end

	end

	def edit
		@user = User.find(params[:id])
	end

	def update
    @user = User.find(params[:id])

    if @user.update(user_params)
			flash[:success] = "Account successfully updated!"
    	redirect_to @user
		else
			flash[:error] = @user.errors.full_messages.join(". ")
			redirect_to :back
		end

  end

  def show
    @user = User.find(params[:id])
    custom_sql = "SELECT * FROM challenges WHERE user_id = #{current_user.id} OR opponent_id = #{current_user.id}"
    @challenges = Challenge.paginate_by_sql(custom_sql, :page => params[:page], :per_page => 5)
  end

	private
	def user_params
		params.require(:user).permit(:first_name, :last_name, :gender, :age, :email, :fav_workout, :password, :fav_food, :avatar)
	end
end
