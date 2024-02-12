require "test_helper"

class LineTest < ActiveSupport::TestCase
  test 'should be valid with a line' do
    line = Line.new(name: "Jacare")
    assert line.valid?
  end

  test 'should not be valid without name' do
    line = Line.new
    assert_not line.valid?
  end
end
