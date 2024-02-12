require "test_helper"

class BetweenTest < ActiveSupport::TestCase
  def setup
    @type = Type.create(name: 'Mogno')
    @line = Line.create(name: 'primeira')
    @tree = Tree.create(
      planted: true,
      position: '1',
      line: @line,
      type: @type
    )
    @position = Position.create(code: 'inbetween')
  end

  test 'should be valid with a between' do
    between = Between.new(
      position: @position,
      tree: @tree,
      type: @type
    )
    assert between.valid?
  end

  # test 'should not be valid without position' do
  #   between = Between.new(
  #     tree: @tree,
  #     type: @type
  #   )
  #   assert_not between.valid?
  # end

  # test 'should be valid with a tree' do
  #   between = Between.new(
  #     tree: @tree,
  #     type: @type
  #   )
  #   assert between.valid?
  # end

  # test 'should be valid with a type' do
  #   between = Between.new(
  #     position: @position,   
  #     tree: @tree
  #   )
  #   assert between.valid?
  # end
end
