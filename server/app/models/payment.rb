class Payment < ActiveRecord::Base

  def self.create_with_reference(payment_fields)
    amount = payment_fields[:amount].to_i

    if payment_fields[:amount_received].present?
      amount_received = payment_fields[:amount_received].to_i
    else
      random_offset = rand(-10..10)
      amount_received = amount + random_offset
    end
    reference = rand(36**5).to_s(9)

    Payment.create(
      payment_fields.merge(
        {
          reference: reference,
          amount_received: amount_received
        }
      )
    )
  end

  def sanitized_attributes
    attributes.reject{|k| k == 'id'}
  end
end
