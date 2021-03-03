class Poker_Match
  attr_reader :players_count, :buy_in, :rebuy_count, :rankings, :pot_value, :money_won, :rebuys

  def initialize(players_count, buy_in)
    @players_count = players_count
    @buy_in = buy_in
    @rebuy_count = 0
    @rankings = {}
    # take rebuys in order to auto populate fields, make it simple as possible
  end

  def pot_value
    # puts "Have you added all player details (inc. rebuys?)"

    @pot_value = (players_count * @buy_in) + (@rebuy_count * @buy_in)
  end

  def add_player_details(name, ranking, money_won, rebuys)
    # self add player details to create class instance of poker match?
    rankings(name, ranking)
    money_won(name, money_won) if money_won > 0
    rebuys(rebuys)
  end

  def rankings(name, ranking)
    @rankings[ranking] = name 
  end

  def rebuys(no_of_rebuys)
    @rebuys += 1
  end

  def money_won(name, money_won)
    @money_won[name] = money_won
  end



end