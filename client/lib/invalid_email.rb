require './lib/quality_check'

class InvalidEmail < QualityCheck
  EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  def criteria?
    !(@booking.email =~ EMAIL_REGEX)
  end
end
