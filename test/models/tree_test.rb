require "test_helper"

class TreeTest < ActiveSupport::TestCase
  def setup
    @line = Line.create(name: "primeira")
    @type = Type.create(name: "Mogno")
  end

  test 'should be valid with a tree' do
    tree = Tree.new(
      planted: true,
      position: 5,
      line: @line,
      type: @type
    )
    assert tree.valid?
  end

  test 'should not be valid without planted' do
    tree = Tree.new(
      position: 5,
      line: @line,
      type: @type
    )
    assert_not tree.valid?
  end

  test 'should not be valid without position' do
    tree = Tree.new(
      planted: true,
      line: @line,
      type: @type
    )
    assert_not tree.valid?
  end
end
