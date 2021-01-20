puts "最初はグーシャンけん"

def janken
    puts "[0]グー\n[1]チョキ\n[2]パー\n[3]戦わない"
    
    player_hand = gets.to_i
    program_hand = rand(3)
    
    puts "ホイ!"

    puts "-------------------------"
    
    jankens = ["グー", "チョキ", "パー"]
    puts "あなたの手は#{jankens[player_hand]},相手の手は#{jankens[program_hand]}です"
    
    if player_hand == 3
        puts"またね"
           
    elsif player_hand == program_hand
        puts "あいこで"
        return true
    elsif (player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
        vektor = ["上","下","右","左"]
        puts "-------------------------"
        puts "あっちむいて"
        puts "[0]上\n[1]下\n[2]右\n[3]左"
        hoi = gets.to_i
        program_hoi = rand(4)
        
        puts "-------------------------"
        puts "あなた:#{vektor[hoi]}"
        puts "相手:#{vektor[program_hoi]}"
        puts "ホイ！"
        
        if hoi == program_hoi
            puts "あなたの勝ちです"
            return false
        else
            return true
        end
        
    else
        vektor = ["上","下","右","左"]
        puts "-------------------------"
        puts "あっちむいて"
        puts "[0]上\n[1]下\n[2]右\n[3]左"
        hoi = gets.to_i
        program_hoi = rand(4)
        
        puts "-------------------------"
        puts "あなた:#{vektor[hoi]}"
        puts "相手:#{vektor[program_hoi]}"
        puts "ホイ！"
        
        if hoi == program_hoi
        
            puts "あなたの負けです"
            return false
        else
            return true
        end
    end
end
        
    
next_game = true

while next_game
    next_game =janken
end
        
        