# frozen_string_literal: true

require_relative 'belonging'

RSpec.describe Belonging do
  describe '#commun' do
    context 'test 1' do
      it 'should return correct result' do
        lmbd = ->(x, y) { return y == Math.cos(x).round(1), y == Math.sin(x**2).round(1) }
        expect(described_class.neibr(0, 1, lmbd)).to match_array([true, false])
      end
    end
    context 'test 2' do
      it 'should return correct result' do
        lmbd = ->(x, y) { return y == Math.cos(x).round(1), y == Math.sin(x**2).round(1) }
        expect(described_class.neibr(0, 0, lmbd)).to match_array([false, true])
      end
    end
    context 'test 3: y > 1' do
      it 'should return correct result' do
        lmbd = ->(x, y) { return y == Math.cos(x).round(1), y == Math.sin(x**2).round(1) }
        expect(described_class.neibr(0, 2, lmbd)).to eq('ERROR')
      end
    end
    context 'test 4: y < -1' do
      it 'should return correct result' do
        lmbd = ->(x, y) { return y == Math.cos(x).round(1), y == Math.sin(x**2).round(1) }
        expect(described_class.neibr(0, -2, lmbd)).to eq('ERROR')
      end
    end
    context 'test 5: compare two ways' do
      it 'should return correct result' do
        lmbd = ->(x, y) { return y == Math.cos(x).round(1), y == Math.sin(x**2).round(1) }
        expect(described_class.neibr(0, 2) { |x, y| [y == Math.cos(x).round(1), y == Math.sin(x**2).round(1)] }).to eq('ERROR')
      end
    end
  end
end
