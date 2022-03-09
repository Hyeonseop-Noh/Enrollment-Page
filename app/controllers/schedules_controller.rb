class SchedulesController < ApplicationController
  before_action :set_schedule, only: %i[ show edit update destroy ]

  # Main Page
  def home
  end

  # Enrollment Page (by tutor_id, running time)
  def calendar
    @id = params[:tutor_id]
    @time = params[:time]
    @schedules = Schedule.where(tutor_id: @id)
    if (@id.to_i<1) || (@id.to_i>5)
      redirect_to '/home', notice: "Tutor not found."
    elsif (@time.to_i != 20) && (@time.to_i != 40)
      redirect_to '/home', notice: "Class duration not found."
    end
  end

  # Each tutor's calendar
  def tutor_schedules
    @id = params[:tutor_id]
    @schedules = Schedule.where(tutor_id: @id)
  end
  
  # GET /schedules or /schedules.json
  def index
    @schedules = Schedule.all
  end

  # GET /schedules/1 or /schedules/1.json
  def show
  end

  # GET /schedules/new
  def new
    @schedule = Schedule.new
  end

  # GET /schedules/1/edit
  def edit
  end

  # POST /schedules or /schedules.json
  def create
    @schedule = Schedule.new(schedule_params)

    respond_to do |format|
      if @schedule.save
        format.html { redirect_to schedule_url(@schedule), notice: "Schedule was successfully created." }
        format.json { render :show, status: :created, location: @schedule }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schedules/1 or /schedules/1.json
  def update
    respond_to do |format|
      if @schedule.update(schedule_params)
        format.html { redirect_to schedule_url(@schedule), notice: "Schedule was successfully updated." }
        format.json { render :show, status: :ok, location: @schedule }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedules/1 or /schedules/1.json
  def destroy
    @schedule.destroy

    respond_to do |format|
      format.html { redirect_to schedules_url, notice: "Schedule was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  # DELETE all schedules
  def total_destroy
    @schedules = Schedule.all
    @schedules.each do |schedule|
      schedule.destroy
    end
    redirect_to '/index'
  end

  # IMPORT csv file
  def import
    Schedule.import(params[:file])
    redirect_to schedules_path, notice: "Schedules Added Successfully"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule
      @schedule = Schedule.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def schedule_params
      params.require(:schedule).permit(:tutor_id, :start_time, :active)
    end
end
