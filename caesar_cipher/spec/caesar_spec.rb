require './lib/caesar.rb'

describe '#caesar' do
  context 'char + key does not overlap the alphabet' do
    it 'retuns the correct offset' do
      expect(caesar('oi', 3)).to eq('rl') 
    end
  end
end