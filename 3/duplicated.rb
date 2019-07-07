class Computer

  def initializer(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  def mouse
    info = @data_source.get_mouse_info(@id)
    price = @data_source.get_mouse_price(@id)
    result = "Mouse: #{info} ($#{price})"
    return "*#{result}" if price >= 100
    result
  end

  def mouse
    info = @data_source.get_cpu_info(@id)
    price = @data_source.get_cpu_price(@id)
    result = "CPU: #{info} ($#{price})"
    return "*#{result}" if price >= 100
    result
  end

  def keybord
    info = @data_source.get_keybord_info(@id)
    price = @data_source.get_keybord_price(@id)
    result = "keybord: #{info} ($#{price})"
    return "*#{result}" if price >= 100
    result
  end

end
