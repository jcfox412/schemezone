class TeamAdminsController < ApplicationController

  before_filter :require_login

  # GET /team_admins/new
  # GET /team_admins/new.json
  def new
    @team_admin = TeamAdmin.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @current_user.team_admin }
    end
  end

  # POST /team_admins
  # POST /team_admins.json
  def create
    @team_admin = TeamAdmin.new(params[:team_admin])

    respond_to do |format|
      if @team_admin.save
        format.html { redirect_to root_url }
        format.json { render json: @team_admin, status: :created, location: @team_admin }
      else
        format.html { render action: "new" }
        format.json { render json: @team_admin.errors, status: :unprocessable_entity }
      end
    end
  end

end
