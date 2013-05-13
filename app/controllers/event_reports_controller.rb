class EventReportsController < ApplicationController
  before_action :set_event_report, only: [:show, :edit, :update, :destroy]

  # GET /event_reports
  # GET /event_reports.json
  def index
    @search = EventReport.search(params[:q])
    @event_reports = @search.result(:distinct => true)
    @search.build_condition if @search.conditions.empty?
    @search.build_sort if @search.sorts.empty?
  end

  # GET /event_reports/1
  # GET /event_reports/1.json
  def show
  end

  # GET /event_reports/new
  def new
    @event_report = EventReport.new
  end

  # GET /event_reports/1/edit
  def edit
  end

  # POST /event_reports
  # POST /event_reports.json
  def create
    @event_report = EventReport.new(event_report_params)

    respond_to do |format|
      if @event_report.save
        format.html { redirect_to @event_report, notice: 'Event report was successfully created.' }
        format.json { render action: 'show', status: :created, location: @event_report }
      else
        format.html { render action: 'new' }
        format.json { render json: @event_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_reports/1
  # PATCH/PUT /event_reports/1.json
  def update
    respond_to do |format|
      if @event_report.update(event_report_params)
        format.html { redirect_to @event_report, notice: 'Event report was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @event_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_reports/1
  # DELETE /event_reports/1.json
  def destroy
    @event_report.destroy
    respond_to do |format|
      format.html { redirect_to event_reports_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_report
      @event_report = EventReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_report_params
      params.require(:event_report).permit(:name, :tech_support, :hostel, :sinopsis, :event_id, user_ids:[])
    end
end
