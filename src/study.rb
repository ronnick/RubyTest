#!usr/bin/ruby -w

class Test
  def self.sayHello
    puts "Hello world."
  end
  
  def anotherSayHello
    puts "New: Hello world."
  end
end

Test.sayHello
Test.new.anotherSayHello

BEGIN {
  puts "I'm the first."
  i = 10
  puts "this is number #{i + 1}"
  
=begin
  for idx in 1..i
    puts "#{idx}"
  end

  
  idx = 0
  while idx < i do
    puts "#{idx}"
    idx += 1
  end

  idx = 0
  begin
    puts "#{idx}"
    idx += 1
  end while idx < i
=end  
}

END {
  puts "I'm the last."
  
  xx = [1,2,3,4,5]
  xx.each do |ii|
    puts "#{ii + 1}"
  end
}

