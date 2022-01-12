require './lib/quality_checks'
require './lib/fees'

class Booking
  QUALITY_CHECKS = [AmountThreshold, DuplicatedPayment, InvalidEmail]

  def initialize(params)
    @params = params
    build_quality_checks
  end

  def reference
    @params[:reference]
  end

  def amount
    @params[:amount]
  end

  def amount_received
    @params[:amount_received]
  end

  def student_id
    @params[:student_id]
  end

  def email
    @params[:email]
  end

  def over_payment?
    @params[:amount_received] > @params[:amount]
  rescue
    false
  end

  def under_payment?
    @params[:amount_received] < @params[:amount]
  rescue
    false
  end

  def quality_checks
    @quality_checks.call
  end

  def amount_with_fees
    @params[:amount] + Fees.call(@params[:amount])
  rescue
    nil
  end

  private

  def build_quality_checks
    @quality_checks = QualityChecks.new

    QUALITY_CHECKS.each do |quality_check|
      @quality_checks.add quality_check.new(self)
    end
  end
end
