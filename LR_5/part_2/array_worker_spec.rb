# frozen_string_literal: true

require_relative 'array_worker'

RSpec.describe ArrayWorker do
  describe '#commun' do
    context 'when arr is nil' do
      it 'should return nil' do
        expect(described_class.commun(nil)).to be_nil
      end
    end

    context 'when arr without negative items' do
      it 'should return correct array' do
        mas_input = 5.times.map { Random.rand(0..10) }
        expect(described_class.commun(mas_input)).to match_array(mas_input)
      end
    end

    context 'when arr has a negative item on the 3-th position (index = 2)' do
      it 'should return correct array' do
        mas_input = 2.times.map { Random.rand(0..10) }
        num = rand(-10...0)
        mas_input.push(num)
        mas_output = mas_input.dup
        num_sq = num**2
        mas_output.push(num_sq)

        expect(described_class.commun(mas_input)).to match_array(mas_output)
      end
    end

    context 'when arr consist of only negative items' do
      it 'should return correct array' do
        mas_input = 2.times.map { Random.rand(-10...0) }
        mas_output = mas_input.dup
        mas_output.insert(1, mas_output[0]**2)
        mas_output.push(mas_output[2]**2)

        expect(described_class.commun(mas_input)).to match_array(mas_output)
      end
    end
  end
end
