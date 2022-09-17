class ShiftTypesController < ApplicationController
  before_action :set_shift_type, only: %i[ show update destroy ]

  # GET /shift_types
  def index
    @shift_types = ShiftType.all

    render jsonapi: @shift_types ,status: 200
  end

  # # GET /shift_types/1
  # def show
  #   render json: @shift_type
  # end
  #
  # # POST /shift_types
  # def create
  #   @shift_type = ShiftType.new(shift_type_params)
  #
  #   if @shift_type.save
  #     render json: @shift_type, status: :created, location: @shift_type
  #   else
  #     render json: @shift_type.errors, status: :unprocessable_entity
  #   end
  # end
  #
  # # PATCH/PUT /shift_types/1
  # def update
  #   if @shift_type.update(shift_type_params)
  #     render json: @shift_type
  #   else
  #     render json: @shift_type.errors, status: :unprocessable_entity
  #   end
  # end
  #
  # # DELETE /shift_types/1
  # def destroy
  #   @shift_type.destroy
  # end
  #
  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_shift_type
  #     @shift_type = ShiftType.find(params[:id])
  #   end
  #
  #   # Only allow a list of trusted parameters through.
  #   def shift_type_params
  #     params.fetch(:shift_type, {})
  #   end
end
