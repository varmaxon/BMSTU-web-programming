# frozen_string_literal: true

require_relative 'calculator'

RSpec.describe Calculator do
  describe '#commun' do
    context 'test 1' do
      it 'should return correct result' do
        eps = 10**-3
        expect(described_class.calc(eps)).to equal(1.61765)
      end
    end
    context 'test 2' do
      it 'should return correct result' do
        eps = 10**-4
        expect(described_class.calc(eps)).to equal(1.61798)
      end
    end
  end
end
