class ContestsController < ApplicationController

  before_filter :get_event, :require_login

  # GET /contests/1
  # GET /contests/1.json
  def show
    @contest = Contest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contest }
    end
  end

  # GET /contests/new
  # GET /contests/new.json
  def new
    @contest = Contest.new

    respond_to do |format|
      format.html # new.html.erb
      # format.json { render json: @event.contest }
    end
  end

  # POST /contests
  # POST /contests.json
  def create

    params[:contest][:team_admin_id] = @current_user.id
    params[:contest][:event_id] = @event.id
    @contest = Contest.new(params[:contest])

    respond_to do |format|
      if @contest.save
        format.html { redirect_to root_url }
        format.json { render json: @contest }
      else
        format.html { render action: "new" }
        format.json { render json: @contest.errors, status: :unprocessable_entity }
      end
    end
  end

  def add_scheme
    @scheme = Scheme.find(params[:scheme_id])

    @contest = Contest.find(params[:contest_id])
    @contest.schemes << @scheme

    redirect_to root_url
  end

  protected
  def get_event
    @event =  Event.find_by_id(params[:event_id])
  end

end
