require 'bcrypt'
require 'benchmark'

puts "Enter an encrypted password:"

encrypted_password = BCrypt::Password.new(gets.chomp)

def break_password(encrypted_password)
  ("aaaaa".."zzzzz").each do |word|
    puts word
    if encrypted_password == word
      puts "PASSWORD BROKEN. YOUR PASSWORD IS #{word}"
      break
    end
  end
end

puts Benchmark.measure { break_password(encrypted_password) }