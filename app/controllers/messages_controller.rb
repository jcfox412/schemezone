require 'pusher'

class MessagesController < ApplicationController
  respond_to :json
  before_filter :require_login, :get_scheme

  def create
    @message = @scheme.messages.build(params[:message])
    @message.user_id = @current_user.id

    if @message.save

      Pusher.app_id = '36066'
      Pusher.key = 'a86e492369573711f1ac'
      Pusher.secret = '83e9412818b7d7b2e60f'

      data = {'user_name' => @current_user.name, 'message' =>  @message.content, 'created_at' => @message.created_at}
      Pusher['page-' + @scheme.id.to_s].trigger('notification', data)



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
