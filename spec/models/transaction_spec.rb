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
  it 'belongs to the receiver wallet' do
    relation = Transaction.reflect_on_association(:to_wallet)
    expect(relation.macro).to eq :belongs_to
  end
  it 'belongs to the sender wallet' do
    relation = Transaction.reflect_on_association(:from_wallet)
    expect(relation.macro).to eq :belongs_to
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of(:transaction_type) }
  end
end
