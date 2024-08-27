# controller.rb
require_relative 'MessageModel'
require_relative 'view'

class MessagesController
  def index
    messages = MessageModel.all
    View.render_index(messages)
  end

  def create(title)
    message = MessageModel.new(title)
    message.save
    View.render_message_created(message)
  end

  def update(id, title)
    message = MessageModel.find(id)
    if message
      message.update(title)
      View.render_message_updated(message)
    else
      View.render_error("Message with ID #{id} not found.")
    end
  end
end