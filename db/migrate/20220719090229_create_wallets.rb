# frozen_string_literal: true

class CreateWallets < ActiveRecord::Migration[6.0]
  def change
    create_table :wallets do |t|
      t.decimal :balance, precision: 8, scale: 2
      t.integer :account_id

      t.timestamps
    end
  end
end
