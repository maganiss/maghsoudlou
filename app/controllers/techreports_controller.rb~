class TechreportsController < ApplicationController
  before_action :set_techreport, only: [:show, :edit, :update, :destroy]

  # GET /techreports
  # GET /techreports.json
  def index
    @techreports = Techreport.all
  end

  # GET /techreports/1
  # GET /techreports/1.json
  def show
  end

  # GET /techreports/new
  def new
    @techreport = Techreport.new
  end

  # GET /techreports/1/edit
  def edit
  end

  # POST /techreports
  # POST /techreports.json
  def create
    @techreport = Techreport.new(techreport_params)
	  @techreport.user_id = current_user.id
    respond_to do |format|
      if @techreport.save
        format.html { redirect_to :back, notice: 'گزارش فنی با موفقیت اضافه شد.' }
        format.json { render action: 'show', status: :created, location: @techreport }
      else
      	format.html { redirect_to :back , notice: 'خطا در ایجاد گزارش فنی:‌ لطفا همه فیلدها را پر کنید.' }
        #format.html { render action: 'new' }
        format.json { render json: @techreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /techreports/1
  # PATCH/PUT /techreports/1.json
  def update
    respond_to do |format|
      if @techreport.update(techreport_params)
        format.html { redirect_to :back, notice: 'Techreport was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @techreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /techreports/1
  # DELETE /techreports/1.json
  def destroy
    @techreport.destroy
    respond_to do |format|
      format.html { redirect_to techreports_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_techreport
      @techreport = Techreport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def techreport_params
      params.require(:techreport).permit(:user_id, :expert_score,:title, :abstract, :en_field, :fa_field, :attachment)
    end
end
