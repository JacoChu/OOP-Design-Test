class Gear
  attr_reader :chainring, :cog, :rim, :tire

  def initialize(args)
    @chainring = args [:chainring]
    @cog = args [:cog]
    @rim = args [:rim]
    @tire = args [:tire]
  end

  def gear_inches
    ratio * Wheel.new(rim, tire).diameter
  end

  def ratio
    chainring / cog.to_f
  end
end

# 9.2 隔離受測物件，使用 Dependency Injection 的方式降低物件之間的耦合
# 聽得懂的 Dependency Injection 好文章 https://medium.com/wenchin-rolls-around/%E6%B7%BA%E5%85%A5%E6%B7%BA%E5%87%BA-dependency-injection-ea672ba033ca
class Gear
  attr_reader :chainring, :cog, :wheel

  def initialize(args)
    @chainring = args [:chainring]
    @cog = args [:cog]
    @wheel = args[:wheel]
  end

  def gear_inches
    ratio * wheel.diameter
  end

  def ratio
    chainring / cog.to_f
  end

end

#9.4 證明命令訊息
# class Gear
  attr_reader :chainring, :cog, :wheel, :observer

  def initialize(args)
    @chainring = args [:chainring]
    @cog = args [:cog]
    @wheel = args[:wheel]
    @observer = args[:observer]
  end

  def gear_inches
    ratio * wheel.diameter
  end

  # 9.5小節修改 width 後
  # def gear_inches
  #   ratio * wheel.width
  # end

  def ratio
    chainring / cog.to_f
  end

  def set_cog(new_cog)
    @cog = new_cog
    changed
  end

  def set_chainring(new_chainring)
    @chainring = new_chainring
    changed
  end

  def changed
    observer.changed(chainring, cog)
  end
end
