class GameSessionsController < ApplicationController
  before_action :set_game_session, only: [:show, :update, :destroy]

  # GET /game_sessions
  # GET /game_sessions.json
  def index
    @game_sessions = GameSession.all
  end

  # GET /game_sessions/1
  # GET /game_sessions/1.json
  def show
  end

  # POST /game_sessions
  # POST /game_sessions.json
  def create
    @game_session = GameSession.new(game_session_params)

    if @game_session.save
      render :show, status: :created, location: @game_session
    else
      render json: @game_session.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /game_sessions/1
  # PATCH/PUT /game_sessions/1.json
  def update
    if @game_session.update(game_session_params)
      render :show, status: :ok, location: @game_session
    else
      render json: @game_session.errors, status: :unprocessable_entity
    end
  end

  # DELETE /game_sessions/1
  # DELETE /game_sessions/1.json
  def destroy
    @game_session.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_session
      @game_session = GameSession.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def game_session_params
      params.fetch(:game_session, {})
    end
end
