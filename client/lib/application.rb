require './lib/bookings_controller'

class Application
  def call(env)
    ['200', {'Content-Type' => 'text/html'}, [BookingsController::Index.new.()]]
  end

  private

  def view
    ERB.new(template).result(binding)
  end

  def template
    File.open('views/index.html.erb', 'r').read
  end
end
