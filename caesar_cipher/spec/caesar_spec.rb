require './lib/caesar.rb'

describe 'Caesar Cypher' do
  context 'char + key does not overlap the alphabet' do
  
    it 'works with with positive key' do
      expect(caesar('oi', 3)).to eq('rl')
    end

    it 'works with negative key' do
      expect(caesar('oi', -3)).to eq('lf')
    end

    it 'works with spaces, ponctuation and capital letters' do
      expect(caesar('This is a Test!@$', 3)).to eq('Wklv lv d Whvw!@$')
    end
  end

  context 'char + key does overlab the alphabet' do

    it 'works with positive key' do
      expect(caesar('oi', 60)).to eq('wq')
    end

    it 'works with negative key' do
      expect(caesar('oi', -60)).to eq('ga')
    end

    it 'works with spaces, ponctuation and capital letters' do
      expect(caesar('This is a Test!@', 58)).to eq('Znoy oy g Zkyz!@')
    end
  end
end