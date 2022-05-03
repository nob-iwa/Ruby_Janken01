puts "じゃんけん..."
puts "0(グー）1(チョキ)2(パー)3(戦わない)"

Janken = ["グー","チョキ","パー"]

player = gets.to_i
player_hand = Janken[player]
program = rand(3)
program_hand = Janken[program]

puts "ホイ！"
puts "---------------"
puts "あなた：#{player_hand}を出しました"
puts "相手：#{program_hand}を出しました"
puts "---------------"

Result = player - program
puts "結果は" 
puts Result

if Result == 0
  puts "あいこ"
elsif Result == 2 || -1
  puts "勝ち"
elsif Result == 1 || -2
  puts "負け"
else
  puts "仮"
end