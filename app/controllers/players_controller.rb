class PlayersController < AuthenticateController
  before_action :set_player, only: [:show, :edit, :update, :destroy]
  before_action :authenticate!, except: [:index]

  # GET /players
  def index
    keyword = params[:keyword]
    if current_user
      @players = Player.search(keyword, :pseudo)
    else
      @players = Player.search(keyword, :score_geo)
    end
  end

  # GET /players/1
  def show
  end

  # GET /players/new
  def new
    @player = Player.new
  end

  # GET /players/1/edit
  def edit
  end

  # POST /players
  def create
    @player = Player.new(player_params)

    respond_to do |format|
      if @player.save
        # Connexion to the players channel
        PlayersChannel.broadcast(@player)

        format.html { redirect_to @player, notice: 'Le joueur a été créé.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /players/1
  def update
    respond_to do |format|
      if @player.update(player_params)
        # Connexion to the players channel
        PlayersChannel.broadcast(@player)

        format.html { redirect_to @player, notice: 'Le joueur a été mis à jour.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /players/1
  def destroy
    @player.destroy
    # Connexion to the players channel
    PlayersChannel.broadcast(@player)
    respond_to do |format|
      format.html { redirect_to players_url, notice: 'Le joueur a été supprimé.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_params
      params.require(:player).permit(:pseudo, :email, :score_geo, :score_gci, :score_gen)
    end
end
