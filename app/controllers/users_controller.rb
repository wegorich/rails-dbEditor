class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy, :edit_avatar]

  # GET /users
  # GET /users.json
  def index
    @search = User.search(params[:q])
    @users = @search.result(:distinct => true)
    @search.build_condition if @search.conditions.empty?
    @search.build_sort if @search.sorts.empty?
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/1/edit
  def edit
  end

  def edit_avatar
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :avatar_url, :phone, :city, :address, :group_id, :user_type_id, :email, elective_ids:[], event_report_ids:[])
    end
end
