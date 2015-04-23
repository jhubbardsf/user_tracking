class UserClicksController < ApplicationController
  before_action :set_user_click, only: [:show, :edit, :update, :destroy]

  # GET /user_clicks
  # GET /user_clicks.json
  def index
    @user_clicks = UserClick.all
  end

  # GET /user_clicks/1
  # GET /user_clicks/1.json
  def show
  end

  # GET /user_clicks/new
  def new
    @user_click = UserClick.new
  end

  # GET /user_clicks/1/edit
  def edit
  end

  # POST /user_clicks
  # POST /user_clicks.json
  def create
    @user_click = UserClick.new(user_click_params)

    respond_to do |format|
      if @user_click.save
        format.html { redirect_to @user_click, notice: 'User click was successfully created.' }
        format.json { render :show, status: :created, location: @user_click }
      else
        format.html { render :new }
        format.json { render json: @user_click.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_clicks/1
  # PATCH/PUT /user_clicks/1.json
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

  # DELETE /user_clicks/1
  # DELETE /user_clicks/1.json
  def destroy
    @user_click.destroy
    respond_to do |format|
      format.html { redirect_to user_clicks_url, notice: 'User click was successfully destroyed.' }
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
