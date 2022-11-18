# frozen_string_literal: true

require_relative 'belonging'

RSpec.describe Belonging do
  describe '#commun' do
    context 'test 1' do
      it 'should return correct result' do
        expect(Belonging.neibr(0, 1) { |x, y| [y == Math.cos(x).round(1), y == Math.sin(x**2).round(1)] }).to match_array([true, false])
      end
    end
    context 'test 2: y > 1' do
      it 'should return correct result' do
        expect(Belonging.neibr(0, 2) { |x, y| [y == Math.cos(x).round(1), y == Math.sin(x**2).round(1)] }).to eq('ERROR')
      end
    end
    context 'test 2: y < -1' do
      it 'should return correct result' do
        expect(Belonging.neibr(0, -2) { |x, y| [y == Math.cos(x).round(1), y == Math.sin(x**2).round(1)] }).to eq('ERROR')
      end
    end
  end
end
