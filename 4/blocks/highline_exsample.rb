require 'highline'

h1 = HighLine.new

friends = h1.ask("友達を入力してください",lambda{|s| s.split(',')})
puts "友達一覧:#{friends.inspect}"

