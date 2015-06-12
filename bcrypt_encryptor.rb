require 'bcrypt'
require 'benchmark'

puts "Enter a password:"

puts "Your encrypted password is: #{BCrypt::Password.create(gets.chomp)}"
