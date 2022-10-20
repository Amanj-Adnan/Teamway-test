class ShiftsController < ApplicationController
  before_action :set_shift, only: %i[ show update destroy ]
  before_action :set_working_details, only: %i[ create update  ]
  before_action :date_check, only: %i[ create update ]

  # GET /shifts
  def index
    @shifts = Shift.all

    render jsonapi: @shifts, status: 200
  end

  # GET /shifts/1
  def show
    render jsonapi: @shifts, status: 200
  end

  # POST /shifts
  def create

    @shift = Shift.create(shift_type_id: @shift_type.id ,worker_id:@worker.id, working_date:params[:date])

    if @shift.save
      render jsonapi: @shift, status: :created
    else
      render jsonapi_errors: @shift.errors, status: 406
    end
  end

  # PATCH/PUT /shifts/1
  def update
    if @shift.update(shift_params)
      render jsonapi: @shift, status: 200
    else
      render jsonapi_errors: @shift.errors, status: 406
    end
  end

  # DELETE /shifts/1
  def destroy
    @shift.destroy
    render json:{msg: "shift_deleted"}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shift
      @shift = Shift.find(params[:id])
    end

  def set_working_details
    if ShiftType.find_by(id: params[:shift_type_id]).nil? || Worker.find_by(id: params[:worker_id]).nil?
      render json: {msg: "There is not such a worker or shift type"}
    else
      @shift_type = ShiftType.find(params[:shift_type_id])
      @worker = Worker.find(params[:worker_id])
    end
  end

    # Only allow a list of trusted parameters through.
    def shift_params
      params.params[:date]
    end

  def date_check
    @worker = Worker.find(params[:worker_id])
    
     @worker.shifts.each do |shift|
       if shift.working_date.to_date == params[:date].to_date
         render json: {msg: "A worker can only have one shift for each day"}
         break
       end
     end
  end
end
