module BicycleSubclassTest

  #9.6.2 指定子類別責任
  def test_implements_the_bicycle_subclass
    assert_respond_to(@object, :post_initialize)
    assert_respond_to(@object, :default_tire_size)
    assert_respond_to(@object, :local_spares)
  end
end
