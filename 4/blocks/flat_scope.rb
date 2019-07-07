var = "scopeを越える瞬間!!"
puts var #=> scopeを越える瞬間!!

class HogeClass# スコープの壁①

  puts "①ここで使えるようにしたい"
  puts var #=> error

  def magic_scope# スコープの壁②
    puts "②メソッドの中でも使いたい"
    puts var
  end
end
