class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :update, :destroy]

  # GET /players
  # GET /players.json
  def index
    @players = Player.all
    render json:  @players, root: :players, meta: {message: 'Successfully fetched player list'}, meta_key: "meta", status: 200
  end

  # GET /players/1
  # GET /players/1.json
  def show
     render json: @player, root: :player, meta: { message: 'Successfully fetched player profile'}, meta_key: "meta", status: 200
  end

  # POST /players
  # POST /players.json
  def create
    @player = Player.new(player_params)

    if @player.save
      render json:  @player,
       root: :player, 
       meta: {message: 'Player has been successfully created.'}, 
       meta_key: "meta",
       location: @player,
       status: 200
    else
      render json: { errors: @player.errors.full_messages}, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /players/1
  # PATCH/PUT /players/1.json
  def update
    if @player.update(player_params)
      render json:  @player,
       root: :player, 
       meta: {message: 'Player has been successfully updated.'}, 
       meta_key: "meta",
       location: @player,
       status: 200
    else
      render json: { errors: @player.errors.full_messages}, status: :unprocessable_entity
    end
  end

  # DELETE /players/1
  # DELETE /players/1.json
  def destroy
    @player.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_params
      params.require(:player).permit(:first_name, :last_name, :state_name, :country_name, :game)
    end
end
