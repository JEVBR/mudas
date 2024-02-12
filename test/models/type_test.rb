require "test_helper"

class TypeTest < ActiveSupport::TestCase
  test 'should be valid with a type' do
    type = Type.new(name: "Mogno")
    assert type.valid?
  end

  test 'should not be valid without name' do
    type = Type.new
    assert_not type.valid?
  end
end
