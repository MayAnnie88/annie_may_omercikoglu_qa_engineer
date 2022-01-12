require './lib/quality_check'

class DuplicatedPayment < QualityCheck
  def criteria?
    repository = BookingRepository.new
    bookings = repository.find_by_student(@booking.student_id)
    bookings.size > 1
  end
end
