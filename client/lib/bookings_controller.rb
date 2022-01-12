require './lib/booking_repository'

module BookingsController
  class Index
    def call
      @bookings = BookingRepository.new.find_all
      render 'index'
    end

    private

    def render(view)
      template = File.open("views/#{view}.html.erb").read
      ERB.new(template).result(binding)
    end
  end
end
