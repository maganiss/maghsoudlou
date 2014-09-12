class EventRemindersController < ApplicationController
  before_action :set_event_reminder, only: [:show, :edit, :update, :destroy]

  # GET /event_reminders
  # GET /event_reminders.json
  def index
    @event_reminders = EventReminder.all
  end

  # GET /event_reminders/1
  # GET /event_reminders/1.json
  def show
  end

  # GET /event_reminders/new
  def new
    @event_reminder = EventReminder.new
  end

  # GET /event_reminders/1/edit
  def edit
  end

  # POST /event_reminders
  # POST /event_reminders.json
  def create
    @event_reminder = EventReminder.new(event_reminder_params)

    respond_to do |format|
      if @event_reminder.save
        format.html { redirect_to @event_reminder, notice: 'Event reminder was successfully created.' }
        format.json { render action: 'show', status: :created, location: @event_reminder }
      else
        format.html { render action: 'new' }
        format.json { render json: @event_reminder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_reminders/1
  # PATCH/PUT /event_reminders/1.json
  def update
    respond_to do |format|
      if @event_reminder.update(event_reminder_params)
        format.html { redirect_to @event_reminder, notice: 'Event reminder was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @event_reminder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_reminders/1
  # DELETE /event_reminders/1.json
  def destroy
    @event_reminder.destroy
    respond_to do |format|
      format.html { redirect_to event_reminders_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_reminder
      @event_reminder = EventReminder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_reminder_params
      params.require(:event_reminder).permit(:user_id, :subject, :description, :event_date, :reminder_date, :publicity, :mailing_list)
    end
end
