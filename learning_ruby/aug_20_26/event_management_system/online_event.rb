class OnlineEvent < Event
  attr_reader :meeting_url

  def initialize(
    id:,
    name:,
    category:,
    date:,
    total_seats:,
    ticket_price:,
    meeting_url:
  )
    super(id:id,
    name:name,
    category:category,
    date:date,
    total_seats:total_seats,
    ticket_price:ticket_price,
    )
    @meeting_url = meeting_url
  end

  def to_s
    super + " - #{meeting_url}"
  end
end