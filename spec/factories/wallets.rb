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
FactoryBot.define do
  factory :wallet do
    balance { '9.99' }
    account_id { 1 }
  end
end
