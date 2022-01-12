require './lib/invalid_email'
require './lib/duplicated_payment'
require './lib/amount_threshold'

class QualityChecks
  def initialize
    @quality_checks = []
  end

  def add(quality_check)
    @quality_checks << quality_check
  end

  def call
    @quality_checks.map(&:call).compact
  end
end
