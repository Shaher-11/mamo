# frozen_string_literal: true

class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.string :transaction_type
      t.decimal :amount, precision: 8, scale: 2
      t.integer :to_wallet_id
      t.integer :from_wallet_id

      t.timestamps
    end
  end
end
