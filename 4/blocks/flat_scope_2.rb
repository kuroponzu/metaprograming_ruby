var = "scopeを越える瞬間!!"
puts var #=> scopeを越える瞬間!!

HogeClass = Class.new do
  puts "1:ここで使えるようにしたい"
  puts var #=> error

  def magic_scope# スコープの壁②
    puts "2:メソッドの中でも使いたい"
    puts var
  end
end
