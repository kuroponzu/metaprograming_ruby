class DS
  def initialize
    'connected DB'
  end

  def get_cpu_info(workstation_id)
    "#{workstation_id}のcpuです。"
  end

  def get_cpu_price(workstation_id)
    workstation_id * 1000
  end

  def get_mouse_info(workstation_id)
    "#{workstation_id}のmouseです。"
  end

  def get_mouse_price(workstation_id)
    workstation_id * 10
  end

  def get_display_info(workstation_id)
    "#{workstation_id}のdisplayです。"
  end

  def get_display_price(workstation_id)
    workstation_id * 100
  end
end
