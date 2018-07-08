require_relative'rooms.rb'
class Karaoke_Bar

  def initialize
    @rooms = {
      'Room1' => Room.new(3),
      'Room2' => Room.new(6),
      'Room3' => Room.new(12)
    }
    @tabs = {}
  end

  def get_tab(customer)
    return @tabs.fetch(customer.name, 0)
  end

  def update_tab(customer, amount)
    if @tabs.has_key?(customer.name)
      @tabs[customer.name] += amount
    else
      @tabs[customer.name] = amount
    end
  end


end
