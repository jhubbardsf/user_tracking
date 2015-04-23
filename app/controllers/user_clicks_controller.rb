class UserClicksController < ApplicationController
  before_action :set_user_click, only: [:show, :edit, :update, :destroy]

  # GET /user/:user_id/user_clicks
  # GET /user/:user_id/user_clicks.json
  def index
    # In the index, get all user_clicks for user, including the user model so N+1 error doesn't occur.
    @user_clicks = UserClick.includes(:user).where(user_id: params[:user_id])
    @user = User.find(params[:user_id])
  end

  # GET /user/:user_id/user_clicks/1
  # GET /user/:user_id/user_clicks/1.json
  def show
  end

  # GET /user/:user_id/user_clicks/new
  def new
    @user_click = UserClick.new
  end

  # GET /user/:user_id/user_clicks/1/edit
  def edit
  end

  # POST /user/:user_id/user_clicks
  # POST /user/:user_id/user_clicks.json
  def create
    @user_click = UserClick.new(user_click_params)

    respond_to do |format|
      if @user_click.save
        format.json { render :show, status: :created, location: @user_click }
      else
        format.json { render json: @user_click.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user/:user_id/user_clicks/1
  # PATCH/PUT /user/:user_id/user_clicks/1.json
  def update
    respond_to do |format|
      if @user_click.update(user_click_params)
        format.html { redirect_to @user_click, notice: 'User click was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_click }
      else
        format.html { render :edit }
        format.json { render json: @user_click.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user/:user_id/user_clicks/1
  # DELETE /user/:user_id/user_clicks/1.json
  def destroy
    user = @user_click.user
    @user_click.destroy
    respond_to do |format|
      format.html { redirect_to user_user_clicks_url(user), notice: 'User click was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_click
      @user_click = UserClick.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_click_params
      params.require(:user_click).permit(:user_id, :field)
    end
end
