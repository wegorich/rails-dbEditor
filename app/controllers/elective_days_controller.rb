class ElectiveDaysController < ApplicationController
  before_action :set_elective_day, only: [ :edit, :update, :destroy]

  # GET /elective_days
  # GET /elective_days.json
  def index
    #@elective_days = ElectiveDay.all
    @search = Elective.search(params[:q])
    @electives = @search.result(:distinct => true)
    @search.build_condition if @search.conditions.empty?
    @search.build_sort if @search.sorts.empty?
  end

  # GET /elective_days/new
  def new
    @elective_day = ElectiveDay.new
  end

  # GET /elective_days/1/edit
  def edit
  end

  # POST /elective_days
  # POST /elective_days.json
  def create
    @elective_day = ElectiveDay.new(elective_day_params)

    respond_to do |format|
      if @elective_day.save
        format.html { redirect_to 'index', notice: 'Elective day was successfully created.' }
        format.json { render action: 'index', status: :created, location: @elective_day }
      else
        format.html { render action: 'new' }
        format.json { render json: @elective_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /elective_days/1
  # PATCH/PUT /elective_days/1.json
  def update
    respond_to do |format|
      if @elective_day.update(elective_day_params)
        format.html { redirect_to 'index', notice: 'Elective day was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @elective_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /elective_days/1
  # DELETE /elective_days/1.json
  def destroy
    @elective_day.destroy
    respond_to do |format|
      format.html { redirect_to elective_days_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_elective_day
      @elective_day = ElectiveDay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def elective_day_params
      params.require(:elective_day).permit(:num, :time, :elective_id)
    end
end
