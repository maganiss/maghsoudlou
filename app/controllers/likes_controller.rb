class LikesController < ApplicationController
  before_action :set_like, only: [:show, :edit, :update, :destroy]

  # GET /likes
  # GET /likes.json
  def index
    @likes = Like.all
  end

  # GET /likes/1
  # GET /likes/1.json
  def show
  end

  # GET /likes/new
  def new
    @like = Like.new
  end

  # GET /likes/1/edit
  def edit
  end

  # POST /likes
  # POST /likes.json
  def create
    @like = Like.new
    @like.likable_id = params[:likable_id]
    @like.likable_type = params[:likable_type]
    @like.user_id = current_user.id
    @notification = Notification.find(params[:notification_id])
    respond_to do |format|
      if @like.save
        format.html { redirect_to @like, notice: 'Like was successfully created.' }
        format.json { render action: 'show', status: :created, location: @like }
        format.js
      else
        format.html { render action: 'new' }
        format.json { render json: @like.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /likes/1
  # PATCH/PUT /likes/1.json
  def update
    respond_to do |format|
      if @like.update(like_params)
        format.html { redirect_to @like, notice: 'Like was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @like.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /likes/1
  # DELETE /likes/1.json
  def destroy
    @notification = Notification.find(params[:notification_id])
    @like.destroy
    respond_to do |format|
      format.html { redirect_to likes_url }
      format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_like
      @like = Like.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def like_params
      params.require(:like).permit(:user_id, :decision_id, :target_id, :exercise_id, :intake_id, :emotion_id)
    end
end
