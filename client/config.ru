require './lib/application'

map '/bookings' do
  run Application.new
end
