class InvalidEventError < StandardError
end

class Event
  include Comparable

  attr_reader :id, :name, :category, :date, :total_seats, :ticket_price

  def initialize(
    id:,
    name:,
    category:,
    date:,
    total_seats:,
    ticket_price:
  )
    @id = id
    @name = name
    @category = category
    @date = date
    @total_seats = total_seats
    @ticket_price = ticket_price
    validate!
  end

  def <=>(other)
    date <=> other.date
  end

  def to_s
    "##{id} #{name} [#{category}] - #{date} - #{ticket_price}"
  end

  private

  def validate!
    raise InvalidEventError,"name cannot be empty" if name.to_s.empty?
    raise InvalidEventError,"total_seats must be greater than 0" if total_seats <= 0
    raise InvalidEventError,"ticket_price cannot be negative" if ticket_price < 0
  end
end