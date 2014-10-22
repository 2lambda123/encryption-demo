require 'benchmark'

puts "Enter an encrypted password:"

encrypted_password = gets.chomp.to_i

def encrypt_password(password)
  encrypted_password = 1
  letters = password.split("")
  letters.each do |letter|
    encrypted_password = encrypted_password * letter.ord
  end
  return encrypted_password
end

def break_password(encrypted_password)
  ("aaaaa".."zzzzz").each do |word|
    puts word
    if encrypt_password(word) == encrypted_password
      puts "PASSWORD BROKEN. YOUR PASSWORD IS #{word}"
      break
    end
  end
end

puts Benchmark.measure { break_password(encrypted_password) }