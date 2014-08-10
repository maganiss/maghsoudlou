class ConfarticlesController < ApplicationController
  before_action :set_confarticle, only: [:show, :edit, :update, :destroy]

  # GET /confarticles
  # GET /confarticles.json
  def index
    @confarticles = Confarticle.all
  end

  # GET /confarticles/1
  # GET /confarticles/1.json
  def show
  end

  # GET /confarticles/new
  def new
    @confarticle = Confarticle.new
  end

  # GET /confarticles/1/edit
  def edit
  end

  # POST /confarticles
  # POST /confarticles.json
  def create
    @confarticle = Confarticle.new(confarticle_params)
	  @confarticle.user_id = current_user.id
    respond_to do |format|
      if @confarticle.save
        format.html { redirect_to :back, notice: 'Conference article was successfully added.' }
        format.json { render action: 'show', status: :created, location: @confarticle }
      else
        format.html { redirect_to :back , notice: 'Error: Please fill in all the blank fields.' }
        #format.html { render action: 'new' }
        format.json { render json: @confarticle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /confarticles/1
  # PATCH/PUT /confarticles/1.json
  def update
    respond_to do |format|
      if @confarticle.update(confarticle_params)
        format.html { redirect_to :back, notice: 'Confarticle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @confarticle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /confarticles/1
  # DELETE /confarticles/1.json
  def destroy
    @confarticle.destroy
    respond_to do |format|
      format.html { redirect_to confarticles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_confarticle
      @confarticle = Confarticle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def confarticle_params
      params.require(:confarticle).permit(:user_id, :expert_score, :title, :abstract, :en_field, :fa_field, :conf_name, :conf_date, :conf_location, :attachment)
    end
end
