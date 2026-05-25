class Leaderboard
  def self.top_n(scores, n)
    scores.sort.reverse[0..n]
  end
end
