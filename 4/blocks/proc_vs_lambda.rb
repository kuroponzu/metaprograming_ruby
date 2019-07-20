def double(callable_object)
    # そもそもこのcallメソッドってどうやって呼ばれてるんだっけ？
    # 例えば、callと言うメソッドを持った独自オブジェクトを作成した場合に
    # このメソッドは正しく動作してしまう？
    callable_object.call * 2
end

l = lambda {return 10}
double(l) # => 20

def another_double
    p = Proc.new{ return 10 }
    result = p.call
    # p.callを実行した時に、`return 10`を実行し、`def another_double`を抜けてしまう。
    return result *2 # ここまでこない
end

another_double # => 10