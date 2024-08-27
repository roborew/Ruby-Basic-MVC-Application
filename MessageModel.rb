class MessageModel
  attr_accessor :id, :title

  @@messages = []
  @@id_counter = 1

  def initialize(title)
    @id = @@id_counter
    @title = title
    @@id_counter += 1
  end

  def save
    @@messages << self
  end

  def self.all
    @@messages
  end

  def self.find(id)
    @@messages.find { |message| message.id == id }
  end

  def update(title)
    @title = title
  end

  def self.delete(id)
    @@messages.reject! { |message| message.id == id }
  end
end
