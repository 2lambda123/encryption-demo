require 'bcrypt'

puts "Enter an enrypted password:"

encrypted_password = BCrypt::Password.create(gets.chomp)

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