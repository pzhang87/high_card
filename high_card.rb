# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

deck = []

suits.each do |suit|
  ranks.each_with_index do |rank, index|
    deck.push([rank, suit, index])
  end
end

input = ""

  until input === "play"
    puts "Enter a player name, or type 'play'."
    input = gets.chomp
    players = players.push(input)
    puts "#{input} has joined the game."
  end

  deck.shuffle
  players.each do |player|
    puts "#{player} played #{deck[player][0]} of #{deck[player][1]}!"
  end
