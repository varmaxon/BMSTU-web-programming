# require_relative 'array_worker'

# RSpec.describe ArrayWorker do
#   describe '#commun' do
#     context 'when arr is nil' do
#       it 'should return nil' do
#         expect(described_class.commun(nil)).to be_nil
#       end
#     end

#     context 'when arr is present' do
#       it 'should return correct array' do
#         expect(described_class.commun([1, 2, 3, -3])).to match_array([1, 2, 3, -3, 0])
#       end
#     end
#   end 
# end

require_relative 'array_worker'

RSpec.describe ArrayWorker do
  describe '#commun' do
    # context 'item is Zero' do
    #   it 'should return nil' do
    #     expect(described_class.commun(nil)).to be_nil
    #   end
    # end

    context 'when x is present' do
      it 'should return correct number' do
        expect(described_class.calc(1, 2)).to be == 1.3395
      end
    end
  end 
end