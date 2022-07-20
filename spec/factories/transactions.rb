# frozen_string_literal: true

# == Schema Information
#
# Table name: transactions
#
#  id               :bigint           not null, primary key
#  amount           :decimal(8, 2)
#  transaction_type :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  from_wallet_id   :integer
#  to_wallet_id     :integer
#
FactoryBot.define do
  factory :transaction do
    transaction_type { 'MyString' }
    amount { '9.99' }
    wallet_id { 1 }
  end
end
