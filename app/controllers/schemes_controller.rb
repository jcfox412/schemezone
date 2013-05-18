class SchemesController < ApplicationController

  before_filter :get_event

  # GET /schemes
  # GET /schemes.json
  def index
    @schemes = Scheme.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @schemes }
    end
  end

  # GET /schemes/1
  # GET /schemes/1.json
  def show
    @scheme = Scheme.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @scheme }
    end
  end

  # GET /schemes/new
  # GET /schemes/new.json
  def new
    @scheme = Scheme.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @scheme }
    end
  end

  # GET /schemes/1/edit
  def edit
    @scheme = Scheme.find(params[:id])
  end

  # POST /schemes
  # POST /schemes.json
  def create
    @scheme = @event.schemes.build(params[:scheme])

    

    if !UserEvent.exists?(:user_id => @current_user.id, :event_id => params[:event_id])
      UserEvent.create(:user_id => @current_user.id, :event_id => params[:event_id], :left => params[:left], :top => params[:top])
    end

    respond_to do |format|
      if @scheme.save
        @scheme.users << @current_user
        format.html { redirect_to @scheme, notice: 'Scheme was successfully created.' }
        format.json { render json: @scheme, status: :created, location: [@event, @scheme] }
      else
        format.html { render action: "new" }
        format.json { render json: @scheme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /schemes/1
  # PUT /schemes/1.json
  def update
    @scheme = Scheme.find(params[:id])

    respond_to do |format|
      if @scheme.update_attributes(params[:scheme])
        format.html { redirect_to @scheme, notice: 'Scheme was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @scheme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schemes/1
  # DELETE /schemes/1.json
  def destroy
    @scheme = Scheme.find(params[:id])
    @scheme.destroy

    respond_to do |format|
      format.html { redirect_to schemes_url }
      format.json { head :no_content }
    end
  end

  protected
  def get_event
    @event =  Event.find(params[:event_id])
  end
end
