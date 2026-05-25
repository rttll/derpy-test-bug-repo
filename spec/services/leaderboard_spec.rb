require 'rails_helper'

RSpec.describe Leaderboard do
  describe '.top_n' do
    it 'returns the top n scores in descending order' do
      expect(Leaderboard.top_n([10, 20, 30, 40, 50], 3)).to eq([50, 40, 30])
    end

    it 'returns an empty array when n is 0' do
      expect(Leaderboard.top_n([1, 2, 3], 0)).to eq([])
    end
  end
end
