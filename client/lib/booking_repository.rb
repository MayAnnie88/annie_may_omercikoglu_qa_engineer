require 'json'
require 'net/http'
require './lib/booking'

class BookingRepository

  def initialize
    @bookings = fetch
  end

  def find_all
    @bookings
  end

  def find_by_student(student_id)
    @bookings.select { |booking|  booking.student_id == student_id }
  end

  def create(booking)
    @bookings << booking
  end

  private

  def fetch
    response = send_request
    response[:bookings].map { |booking| Booking.new(booking) }
  end

  def send_request
    endpoint = ENV['BOOKINGS_ENDPOINT']
    uri = URI(endpoint)
    response = Net::HTTP.get_response(uri)
    JSON.parse(response.body, symbolize_names: true)
  end
end
