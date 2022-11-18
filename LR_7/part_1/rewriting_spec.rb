# frozen_string_literal: true

require_relative 'rewriting'

RSpec.describe Rewriting do
  describe '#commun' do
    context 'test 1: to get the data of the file' do
      it 'should return correct result' do
        file = File.open('text/test_F.txt', 'r')
        expect(described_class.read_file(file)).to match_array(["one\n", "two\n", "end"])
        file.close
      end
    end
    context 'test 2: to reverse the data' do
      it 'should return correct result' do
        expect(described_class.text_operation(["one\n", "two"])).to match_array(["eno", "owt"])
      end
    end
    context 'test 3: checking file contents' do
      it 'should return correct result' do
        file_1 = File.open('text/test_F.txt', 'r')
        data_F = file_1.readlines
        file_1.close

        file_2 = File.open('text/test_G.txt', 'w')

        Rewriting.setting(file_2, data_F)
        file_2.close

        file = File.open('text/test_G.txt', 'r')
        data_G = file.readlines
        data_G[-1] = data_G[-1].chop

        print data_F, "\n"
        print data_G

        expect(data_F).to match_array(data_G)
      end
    end
  end
end
