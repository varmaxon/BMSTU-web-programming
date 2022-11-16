# frozen_string_literal: true

require_relative 'text_worker'

RSpec.describe TextWorker do
  describe '#commun' do
    context 'when arr is nil' do
      it 'should return nil' do
        expect(described_class.sorting(nil)).to be_nil
      end
    end

    context 'when line is sorted in DEcreasing words length' do
      it 'should return sorting lines' do
        str = ''
        length = 4
        3.times do
          str += (0...length).map { (rand(65..65+26)).chr }.join + ' '
          length -= 1
        end
        str.chop
        str = str.split(' ')
        expect(described_class.sorting([str])).to match_array([str])
      end
    end

    context 'when line is sorted in INcreasing words length' do
      it 'should return sorting lines' do
        str = ''
        length = 2
        3.times do
          str += ((0...length).map { (rand(65..65+26)).chr }.join) + ' '
          length += 1
        end
        str.chop
        str = str.split(' ')
        expect(described_class.sorting([str])).to match_array([str.reverse])
      end
    end

    context 'test with two substrings' do
      it 'should return sorting lines' do
        str_1 = ''
        str_1 += ((0...2).map { (rand(65..65+26)).chr }.join) + ' ' + ((0...3).map { (rand(65..65+26)).chr }.join)
        str_2 = ''
        str_2 += ((0...5).map { (rand(65..65+26)).chr }.join) + ' ' + ((0...4).map { (rand(65..65+26)).chr }.join)

			  expect(described_class.sorting([[str_1], [str_2]])).to match_array([[str_2], [str_1]])
      end
    end

  end
end 
