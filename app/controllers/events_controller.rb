class EventsController < ApplicationController
  # GET /events
  # GET /events.json
  def index
    @events = Event.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @events }
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find_by_stubhub_eventId(params[:id])

    @schemes = @event.schemes.where(:team_name => params[:team])

    @locs = UserEvent.where(:event_id => @event.id)

    @already_have_loc = UserEvent.user_has_this_event(@current_user, @event.id)

    @my_loc = UserEvent.where(:event_id => @event.id, :user_id => @current_user.id).first

    @team = params[:team]
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event }
    end
  end

  # # GET /events/new
  # # GET /events/new.json
  # def new
  #   @event = Event.new

  #   respond_to do |format|
  #     format.html # new.html.erb
  #     format.json { render json: @event }
  #   end
  # stubhub_eventId

  # # GET /events/1/edit
  # def edit
  #   @event = Event.find(params[:id])
  # end

  # POST /events
  # POST /events.json
  def create
    Event.find_or_create_event(params)
    render :nothing => true
  end

  # # PUT /events/1
  # # PUT /events/1.json
  # def update
  #   @event = Event.find(params[:id])

  #   respond_to do |format|
  #     if @event.update_attributes(params[:event])
  #       format.html { redirect_to @event, notice: 'Event was successfully updated.' }
  #       format.json { head :no_content }
  #     else
  #       format.html { render action: "edit" }
  #       format.json { render json: @event.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /events/1
  # # DELETE /events/1.json
  # def destroy
  #   @event = Event.find(params[:id])
  #   @event.destroy

  #   respond_to do |format|
  #     format.html { redirect_to events_url }
  #     format.json { head :no_content }
  #   end
  # end

  # def get_parent
  #   case
  #     when params[:team_id] 
  #       @team_id = params[:team_id]
  #   end    
  # end  

end
