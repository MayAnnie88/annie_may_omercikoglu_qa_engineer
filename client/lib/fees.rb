class Fees
  DEFAULT_FEE = 0.02

  RULES = [
    { range: 0..999, fee: 0.05 },
    { range: 1_000..9_999, fee: 0.03 }
  ]

  def self.call(amount)
    fee = amount * DEFAULT_FEE

    RULES.each do |rule|
      fee = amount * rule[:fee] if rule[:range].include?(amount)
    end

    fee
  end
end
