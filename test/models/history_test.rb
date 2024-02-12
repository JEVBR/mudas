require "test_helper"

class HistoryTest < ActiveSupport::TestCase
  def setup
    @line = Line.create(name: "primeira")
    @type_t = Type.create(name: "Mogno")
    @type_b = Type.create(name: "pitaia")
    @tree = Tree.create(
      planted: true,
      position: '1',
      line: @line,
      type: @type_t
    )
    @position = Position.create(code: 'beside')
    @between = Between.create(
      tree: @tree,
      type: @type,
      position: @position
    )
  end

  test 'should be valid with a history to tree' do
    history = History.new(
      tree: @tree,
      date: DateTime.current.to_date,
      body: 'tree planted'
    )
    assert history.valid?
  end

  test 'should be valid with a history to between' do
    history = History.new(
      between: @between,
      date: DateTime.current.to_date,
      body: 'in between planted'
    )
    assert history.valid?
  end

  test 'should not be valid with both a tree andbetween' do
    history = History.new(
      between: @between,
      tree: @tree,
      date: DateTime.current.to_date,
      body: 'in between planted'
    )
    assert_not history.valid?
  end
end
