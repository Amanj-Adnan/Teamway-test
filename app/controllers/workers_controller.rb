class WorkersController < ApplicationController
  before_action :set_worker, only: %i[ show update destroy ]

  # GET /workers
  def index
    @workers = Worker.all

    render jsonapi: @worker, status: 200
  end

  # GET /workers/1
  def show
    @worker= @worker.shifts
    render jsonapi: @worker, status: 200
  end

  # POST /workers
  def create
    @worker = Worker.new(worker_params)

    if @worker.save
      render jsonapi: @worker, status: :created
    else
      render jsonapi_errors: @worker.errors , status: 	406
    end
  end

  # PATCH/PUT /workers/1
  def update
    if @worker.update(worker_params)
      render jsonapi: @worker, status: 200
    else
      render jsonapi_errors: @worker.errors, status: 406
    end
  end

  # DELETE /workers/1
  def destroy
    @worker.destroy
    render json:{msg: "Worker deleted"} , status: 204
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_worker
      @worker = Worker.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def worker_params
      params.permit(:name,:age)
    end
end
