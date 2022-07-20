# frozen_string_literal: true

class TransactionsController < ApplicationController
  def create
    sender_phone = params[:sender_phone.to_s]
    email = params[:email.to_s]
    amount = params[:amount.to_s]
    type = params[:transaction_type.to_s]
    receiver_phone = params[:receiver_phone.to_s]
    sender = Account.where(phone_number: sender_phone).or(Account.where(email: email.to_s)).first
    receiver = Account.find_by_phone_number(receiver_phone)

    if receiver && sender && receiver.verified? && sender.verified? && sender.wallet && receiver.wallet && sender.wallet.balance.to_i >= amount.to_i
      ActiveRecord::Base.transaction do
        @tr = Transaction.create!(amount: amount, transaction_type: type, from_wallet_id: sender.wallet.id,
                                  to_wallet_id: receiver.wallet.id)
        sender.wallet.balance = sender.wallet.balance - amount.to_i
        sender.wallet.save!
        receiver.wallet.balance = receiver.wallet.balance + amount.to_i
        receiver.wallet.save!
        render json: @tr
      end
    else
      head 403
    end
  end

  def history
    account = Account.find(params[:id])
    if account.wallet
      @transactions = Transaction.where(from_wallet_id: account.wallet.id).or(Transaction.where(to_wallet_id: account.wallet.id))
      render json: @transactions
    end
  end
end
