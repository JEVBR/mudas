require "test_helper"

class PositionTest < ActiveSupport::TestCase
  test 'should be valid with a position' do
    position = Position.new(code: 'beside')
    assert position.valid?
  end

  test 'should not be valid with a wrong position' do
    position = Position.new(code: 'nowhere')
    assert_not position.valid?
  end

  test 'should not be valid without position' do
    position = Position.new
    assert_not position.valid?
  end
end
