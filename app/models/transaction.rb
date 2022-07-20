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
class Transaction < ApplicationRecord
  belongs_to :to_wallet, class_name: 'Wallet'
  belongs_to :from_wallet, class_name: 'Wallet'

  validates :transaction_type, presence: true
  validates :amount, presence: true, numericality: true
end
