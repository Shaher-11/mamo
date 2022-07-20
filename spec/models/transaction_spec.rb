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
require 'rails_helper'

RSpec.describe Transaction, type: :model do
  
end
