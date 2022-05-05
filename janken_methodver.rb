def janken

 puts "じゃんけん..."
 puts "0(グー）1(チョキ)2(パー)3(戦わない)"

 jankens = ["グー","チョキ","パー"]

 player = gets.to_i
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

 $janken_result = player - program
 
 puts $janken_result

 #def Jresult(result)
   if $janken_result == 0
    puts "あいこ"
    return true
   elsif $janken_result == 2 || $janken_result == -1
    puts "勝ち"
    return false
   elsif $janken_result == 1 || $janken_result == -2
    puts "負け"
    return false
   end
   
 puts $janken_result
 puts "です"

 #end
 

end

#next_game = true

#while  next_game
  #next_game = janken
#end


#if Jresult(result) == "勝ち"
 # puts "win"
#elsif Jresult(result) == "負け"
 # puts "lose"
#else puts "continue"
#end



def atti_hoi
 puts "あっち向いて〜"
 puts "0(上）1(下)2(左)3(右)"

 hoi = ["上","下","左","右"]

 player = gets.to_i
 player_direction = hoi[player]
 program = rand(4)
 program_direction = hoi[program]

 puts "ホイ！"
 puts "---------------"

 puts "あなた： #{player_direction}"
 puts "相手： #{program_direction}"

 if player_direction == program_direction && ( $janken_result == 2 || $janken_result == -1 )
   puts "あなたの勝ち"
 elsif player_direction == program_direction && ( $janken_result == 1 || $janken_result == -2 )
   puts "あなたの負け"
 else
   puts "ジャンケンに戻る"
   janken
 end
end

next_game = true

while  next_game
  next_game = janken
end

if $janken_result == 0
 puts "あいこ"
 janken
elsif $janken_result == 2 || $janken_result == -1
 puts "勝ち"
 atti_hoi
elsif $janken_result == 1 || $janken_result == -2
 puts "負け"
 atti_hoi
else 
 puts "最初"
end

#if janken == false
 #atti_hoi
#else
 #puts "まだまだ"
 #janken
#end
