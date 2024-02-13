require "test_helper"

class LineTest < ActiveSupport::TestCase
  test 'should be valid with a line' do
    line = Line.new(
      name: 'Jacare',
      sequence: 4,
      spacing: 2
    )
    assert line.valid?
  end

  test 'should not be valid without sequence #' do
    line = Line.new(
      name: 'Jacare',
      spacing: 2
    )
    assert_not line.valid?
  end

  test 'should not be valid with spacing as string' do
    line = Line.new(
      name: 'Jacare',
      sequence: 4,
      spacing: 'a'
    )
    assert_not line.valid?
  end

  test 'should not be valid without spacing' do
    line = Line.new(
      name: 'Jacare',
      sequence: 4
    )
    assert_not line.valid?
  end

  test 'should not be valid without name' do
    line = Line.new
    assert_not line.valid?
  end
end
