module DiameterizableInterfaceTest
  def test_implements_diameterizable_interface
    assert_respond_to(@object, :width)
  end
end
