# frozen_string_literal: true

require_relative 'calculator'

RSpec.describe Calculator do
  describe '#commun' do
    context 'when x is present (test 1)' do
      it 'should return correct number' do
        expect(described_class.calc(1, 2)).to eq(1.3395)
      end
    end
    context 'when x is present (test 2)' do
      it 'should return correct number' do
        expect(described_class.calc(0, 0)).to eq(3.4641)
      end
    end
    context 'when x is present (test 3)' do
      it 'should return correct number' do
        expect(described_class.calc(100, 100)).to eq(1.3051)
      end
    end
  end
end
