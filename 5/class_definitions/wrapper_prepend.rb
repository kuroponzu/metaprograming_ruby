module ExplicitString
  def length
    super > 5 ? 'long' : 'short'
  end
end

# class_evalを使用して、クラスの定義をしている。
String.class_eval do
  prepend ExplicitString
end
