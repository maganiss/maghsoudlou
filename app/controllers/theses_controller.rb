class ThesesController < ApplicationController
  before_action :set_thesis, only: [:show, :edit, :update, :destroy]

  # GET /theses
  # GET /theses.json
  def index
    @theses = Thesis.all
  end

  # GET /theses/1
  # GET /theses/1.json
  def show
  end

  # GET /theses/new
  def new
    @thesis = Thesis.new
  end

  # GET /theses/1/edit
  def edit
  end

  # POST /theses
  # POST /theses.json
  def create
    @thesis = Thesis.new(thesis_params)
	  @thesis.user_id = current_user.id
    respond_to do |format|
      if @thesis.save
        format.html { redirect_to :back, notice: 'Thesis was successfully added.'}
        format.json { render action: 'show', status: :created, location: @thesis }
      else
      	format.html { redirect_to :back , notice: 'Error: Please fill in all the blank fields.' }
        #format.html { render action: 'new' }
        format.json { render json: @thesis.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /theses/1
  # PATCH/PUT /theses/1.json
  def update
    respond_to do |format|
      if @thesis.update(thesis_params)
        format.html { redirect_to :back, notice: 'Thesis was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @thesis.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /theses/1
  # DELETE /theses/1.json
  def destroy
    @thesis.destroy
    respond_to do |format|
      format.html { redirect_to theses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thesis
      @thesis = Thesis.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thesis_params
      params.require(:thesis).permit(:user_id, :expert_score,:title, :fa_field, :en_field, :abstract, :professor, :attachment)
    end
end
