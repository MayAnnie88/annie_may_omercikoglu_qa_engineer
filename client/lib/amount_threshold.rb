require './lib/quality_check'

class AmountThreshold < QualityCheck
  THRESHOLD = 1_000_000

  def criteria?
    @booking.amount_received > THRESHOLD
  rescue
    false
  end
end
