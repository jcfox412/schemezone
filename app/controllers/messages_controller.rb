class MessagesController < ApplicationController
  respond_to :json
  before_filter :require_login, :get_scheme

  def create
    @message = @scheme.messages.build(params[:message])
    @message.user_id = @current_user.id

    if @message.save
      respond_with([@scheme.event,@scheme,@message], :status => :created)
    else
      respond_with(@message.errors, :status => :unprocessable_entity)
    end
  end

  protected
  def get_scheme
      @scheme = Scheme.find(params[:scheme_id]) if params[:scheme_id]
      redirect_to root_url unless defined?(@scheme)
  end

end
