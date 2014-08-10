class ProgressreportsController < ApplicationController
  before_action :set_progressreport, only: [:show, :edit, :update, :destroy]

  # GET /progressreports
  # GET /progressreports.json
  def index
    @progressreports = Progressreport.all
  end

  # GET /progressreports/1
  # GET /progressreports/1.json
  def show
  end

  # GET /progressreports/new
  def new
    @progressreport = Progressreport.new
  end

  # GET /progressreports/1/edit
  def edit
  end

  # POST /progressreports
  # POST /progressreports.json
  def create
    @progressreport = Progressreport.new(progressreport_params)
	  @progressreport.user_id = current_user.id
    respond_to do |format|
      if @progressreport.save
        format.html { redirect_to :back, notice: 'Progress Report was successfully added.' }
        format.json { render action: 'show', status: :created, location: @progressreport }
      else
      	format.html { redirect_to :back , notice: 'Error: please fill in all the blank fields.' }
        #format.html { render action: 'new' }
        format.json { render json: @progressreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /progressreports/1
  # PATCH/PUT /progressreports/1.json
  def update
    respond_to do |format|
      if @progressreport.update(progressreport_params)
        format.html { redirect_to :back, notice: 'Progressreport was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @progressreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /progressreports/1
  # DELETE /progressreports/1.json
  def destroy
    @progressreport.destroy
    respond_to do |format|
      format.html { redirect_to progressreports_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_progressreport
      @progressreport = Progressreport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def progressreport_params
      params.require(:progressreport).permit(:user_id, :expert_score, :title, :abstract, :en_field, :fa_field, :attachment) 
    end
end
