var = "scopeを越える瞬間!!"
puts var #=> scopeを越える瞬間!!

HogeClass = Class.new do
  puts "1:ここで使えるようにしたい"
  puts var

  define_method :my_method do
    puts "2:メソッドの中でも使えた！"
    puts var
  end
end

puts HogeClass.new.my_method
