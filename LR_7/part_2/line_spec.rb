# frozen_string_literal: true

require_relative 'line'

RSpec.describe 'two Classes' do
  describe '#commun' do
    context 'test 1.1' do
      it 'should return correct result' do
        line_class_parent = Line.new(2, 1, 6, 3)
        expect(line_class_parent.check_belonging(3, 1.5)).to be true
      end
    end
    context 'test 1.2' do
      it 'should return correct result' do
        line_class_parent = Line.new(2, 1, 6, 3)
        expect(line_class_parent.check_belonging(3, 1.6)).to be false
      end
    end
    context 'test 2.1' do
      it 'should return correct result' do
        line_class_child = LineChild.new(2, 1, 6, 3, 2)
        expect(line_class_child.check_belonging(3, 2.5)).to be true
      end
    end
    context 'test 2.2' do
      it 'should return correct result' do
        line_class_child = LineChild.new(2, 1, 6, 3, 2)
        expect(line_class_child.check_belonging(3, 2.7)).to be false
      end
    end
  end
end
