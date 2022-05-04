class Jankenhoi
 def initialize(player)
  @player = player
 end
 
 def janken
  puts "じゃんけん..."
  puts "0(グー）1(チョキ)2(パー)3(戦わない)"

  jankens = ["グー","チョキ","パー"]

  @player = gets.to_i
  player_hand = jankens[player]
  program = rand(3)
  program_hand = jankens[program]

  if player < 3
    puts "ホイ！"
  elsif player == 3
    puts "戦わない"
    return
  else 
    puts "1〜3の数字を入力してください"
  end

  puts "---------------"
  puts "あなた：#{player_hand}を出しました"
  puts "相手：#{program_hand}を出しました"
  puts "---------------"

  result = player - program

  def Jresult(result)
    if result == 0
     puts "あいこ"
     return true
    elsif result == 2 || result == -1
     puts "勝ち"
     return false
    elsif result == 1 || result == -2
     puts "負け"
     return false
    end
  end
 
 # Jresult(result)
  puts result
  puts "(1回目)中の結果は"
  puts Jresult(result)
  puts "です。"

  # next_game = true

  while  next_game
   next_game = janken
  end

 end
end 

first_time = Jankenhoi.new(gets.to_i)
first_time.janken()
 

puts "外の結果は"
puts Jresult(result)
 

#if Jresult(result) == "勝ち"
 # puts "win"
#elsif Jresult(result) == "負け"
 # puts "lose"
#else puts "continue"
#end

 puts "あっち向いて〜"
 puts "0(上）1(下)2(左)3(右)"

 Hoi = ["上","下","左","右"]

 player = gets.to_i
 player_direction = Hoi[player]
 program = rand(4)
 program_direction = Hoi[program]

 puts "ホイ！"
 puts "---------------"

 puts "あなた： #{player_direction}"
 puts "相手： #{program_direction}"

 puts result
 puts "(２回目)"

 if player_direction == program_direction && ( result == 2 || result == -1 )
   puts "あなたの勝ち"
 elsif player_direction == program_direction && ( result == 1 || result == -2 )
   puts "あなたの負け"
 else
   puts "ジャンケンに戻る"
 end


