class JournalarticlesController < ApplicationController
  before_action :set_journalarticle, only: [:show, :edit, :update, :destroy]

  # GET /journalarticles
  # GET /journalarticles.json
  def index
    @journalarticles = Journalarticle.all
  end

  # GET /journalarticles/1
  # GET /journalarticles/1.json
  def show
  end

  # GET /journalarticles/new
  def new
    @journalarticle = Journalarticle.new
  end

  # GET /journalarticles/1/edit
  def edit
  end

  # POST /journalarticles
  # POST /journalarticles.json
  def create
    @journalarticle = Journalarticle.new(journalarticle_params)
	  @journalarticle.user_id = current_user.id
    respond_to do |format|
      if @journalarticle.save
        format.html { redirect_to :back, notice: 'Journalarticle was successfully added.' }
        format.json { render action: 'show', status: :created, location: @journalarticle }
      else
      	format.html { redirect_to :back , notice: 'Error: Please fill in all the blank fields.' }
        #format.html { render action: 'new' }
        format.json { render json: @journalarticle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /journalarticles/1
  # PATCH/PUT /journalarticles/1.json
  def update
    respond_to do |format|
      if @journalarticle.update(journalarticle_params)
        format.html { redirect_to :back, notice: 'Journalarticle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @journalarticle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /journalarticles/1
  # DELETE /journalarticles/1.json
  def destroy
    @journalarticle.destroy
    respond_to do |format|
      format.html { redirect_to journalarticles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_journalarticle
      @journalarticle = Journalarticle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def journalarticle_params
      params.require(:journalarticle).permit(:user_id, :expert_score, :title, :abstract, :en_field, :fa_field, :journal_name, :journal_publishyear, :journal_volume, :journal_pages, :attachment)
    end
end
