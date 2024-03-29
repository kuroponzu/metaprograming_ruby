class Computer

  def initializer(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  def method_missing(name)
    # get_spu_infoの様なメソッドがなければ、method_missingを返す。
    super if !@data_source.respond_to?("get_#{name}_info")
    info = @data_source.send("get_#{name}_info", @id)
    price = @data_source.send("get_#{name}_price", @id)
    result = "#{name.capitalize}: #{info} ($#{price})"
    return "*#{result}" if price >= 100
    result
  end

  def respond_to_missing?(method, include_private = false)
    @data_source.respond_to?("get_#{method}_info") || super
  end
end
