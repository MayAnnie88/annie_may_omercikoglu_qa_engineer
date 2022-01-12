class QualityCheck
  def initialize(booking)
    @booking = booking
  end

  def call
    self.class.name if criteria?
  end

  private

  def criteria?
    raise NotImplementedError
  end
end
