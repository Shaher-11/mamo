# README

## Installation

### Requirements

- :gem: Ruby version `2.7.2` (manage Ruby versions with [rvm](https://rvm.io/) or [rbenv](https://github.com/rbenv/rbenv))
- :elephant: PostgreSQL

### Getting started

- Fork & clone the repository
- `bundle install`
- Run `rails db:create db:migrate`
- Run `bundle exec rspec` to validate the installation
- Run `rails server`
- You're good to go :tada:


### Testing the app
- run the rails server `rails s`
- to get the transaction history of an account hit `http://localhost:3000/transactions/history/1` where 1 is the account id
- to perform a transaction from one verified account to another use the transaction endpoint 
- example `http://localhost:3000/transactions?transaction_type=lunch&sender_phone=0114528792&receiver_phone=01094923371&amount=50`
as long the account is created and verfied and has a wallet then then the amount will be deducted from the sender account and added to the receiver account other wise we return 403,
also user can send by phone number or email.


## Challenge

See [`doc/challenge/README.md`](./doc/challenge/README.md)

