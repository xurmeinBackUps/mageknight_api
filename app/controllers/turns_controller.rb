class TurnsController < ApplicationController
  before_action :set_turn, only: [:show, :update, :destroy]

  # GET /turns
  # GET /turns.json
  def index
    @turns = Turn.all
  end

  # GET /turns/1
  # GET /turns/1.json
  def show
  end

  # POST /turns
  # POST /turns.json
  def create
    @turn = Turn.new(turn_params)

    if @turn.save
      render :show, status: :created, location: @turn
    else
      render json: @turn.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /turns/1
  # PATCH/PUT /turns/1.json
  def update
    if @turn.update(turn_params)
      render :show, status: :ok, location: @turn
    else
      render json: @turn.errors, status: :unprocessable_entity
    end
  end

  # DELETE /turns/1
  # DELETE /turns/1.json
  def destroy
    @turn.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_turn
      @turn = Turn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def turn_params
      params.fetch(:turn, {})
    end
end
