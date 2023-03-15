module BicycleInterfaceTest

  #9.6.1 指定繼承介面
  def test_implements_the_bicycle_interface
    assert_respond_to(@object, :default_tire_size)
    assert_respond_to(@object, :default_chain)
    assert_respond_to(@object, :chain)
    assert_respond_to(@object, :size)
    assert_respond_to(@object, :tire_size)
    assert_respond_to(@object, :spares)
  end

  def test_subclasses_respond_to_default_tire_size
    assert_respond_to(@bike.class, :default_tire_size)
  end
end
