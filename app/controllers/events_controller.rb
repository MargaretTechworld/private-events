class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
      redirect_to new_event_path, notice: 'Event was successfully created.'
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :date, :description)
  end
end
