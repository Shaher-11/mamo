# frozen_string_literal: true

# == Schema Information
#
# Table name: wallets
#
#  id         :bigint           not null, primary key
#  balance    :decimal(8, 2)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  account_id :integer
#
class Wallet < ApplicationRecord
  belongs_to :account
  has_many :transactions
end
