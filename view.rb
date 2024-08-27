# view.rb

class View
  def self.render_index(messages)
    puts "<html>"
    puts "  <body>"
    puts "    <h1>Message Board</h1>"
    puts "    <ul>"
    messages.each do |message|
      puts "      <li>#{message.id}: #{message.title}</li>"
    end
    puts "    </ul>"
    puts "  </body>"
    puts "</html>"
  end

  def self.render_message_created(message)
    puts "<html>"
    puts "  <body>"
    puts "    <p>Message '#{message.title}' created with ID #{message.id}.</p>"
    puts "  </body>"
    puts "</html>"
  end

  def self.render_message_updated(message)
    puts "<html>"
    puts "  <body>"
    puts "    <p>Message with ID #{message.id} updated to '#{message.title}'.</p>"
    puts "  </body>"
    puts "</html>"
  end

  def self.render_error(error_message)
    puts "<html>"
    puts "  <body>"
    puts "    <p>Error: #{error_message}</p>"
    puts "  </body>"
    puts "</html>"
  end
end