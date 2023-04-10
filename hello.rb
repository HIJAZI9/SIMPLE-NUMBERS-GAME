class Game
  attr_accessor :player1 ,:player2
  attr_reader :result
    def initialize
      @player1 = "Unknown Name"
      @player2 = "Unknown Name"
      @result_p1 = 0
      @result_p2 = 0
    end
    def intro
      nr_player = 0
      puts "Hello , Enter the Number of Players ,Please "
      puts "If just one Player enter 1 ,if two Players then enter 2 "
      nr_player = gets.chomp.to_i
      get_names_and_ages(nr_player)
    end

    def get_names_and_ages (playersNumber)

          if playersNumber == 1
              puts "enter your name "
              @player1 = gets.chomp.to_s
              p1_game
            elsif playersNumber == 2
              puts "enter your name (Player1) "
              @player1 = gets.chomp().to_s


              puts "enter your name (Player2) "
              @player2 = gets.chomp.to_s
              p2_game
            else
              puts "please , enter Players numbers  1 or 2"
              intro
          end

    end

  def p1_game
    randNumber =rand(1..3)
    try = 0
    while true
        puts "Enter a random Number ,Please"
        given_num = gets.chomp.to_i
       if given_num == randNumber
            @result_p1 +=1
            try +=1
            puts "#{randNumber}you passed !!! your Score is #{@result_p1} , try : #{try}"
            puts "Do you want to play again ?"
            puts "1 => yes ,2 => No"
            answer = gets.chomp.to_i
              if answer == 2
                  break
                elsif answer == 1
                  playagain_p1
                else
                  puts "wrong Answer"
              end
            break
          elsif given_num < randNumber
           try +=1
           puts "#{randNumber}Your given Number is smaller than randNumber ,  try : #{try}"
            puts "pls ,try again "

          elsif given_num > randNumber
           try +=1
           puts "#{randNumber}Your given Number is grater than randNumber , try : #{try}"
            puts "pls ,try again "
           else
            puts "your Input value is wrong "
       end


      end
    end

    def p2_game
      random =rand(1..3)
      try_p1 = 0
      try_p2 = 0
      while true
          puts "#{player1} , enter a random Number pls"
          given_num_p1 = gets.chomp.to_i

          puts "#{player2} , enter a random Number pls"
          given_num_p2 = gets.chomp.to_i

                if given_num_p1 == random || given_num_p2 == random

                    if given_num_p1 == random && given_num_p2 == random
                      @result_p1 +=1
                      @result_p2 +=1
                      puts "#{player1} passed , score #{@result_p1} , try : #{try_p1}"
                      puts "#{player2} passed , score #{@result_p2} , try : #{try_p2}"

                    elsif given_num_p1 == random
                      @result_p1 +=1
                      puts "#{player1} passed , score #{@result_p1} , try : #{try_p1}"

                    elsif given_num_p2 == random
                      @result_p2 +=1
                      puts "#{player2} passed , score #{@result_p2} , try : #{try_p2}"

                    end
                    playagain_p2
                    break
                elsif given_num_p1 <= random
                  try_p1 +=1
                  puts "#{player1} : your given Number is smaller than RandNumber , pls try again  ,try : #{try_p1}"
                elsif given_num_p1 > random
                  try_p1 +=1
                  puts "#{player1} : your given Number is grater than RandNumber , pls try again ,try : #{try_p1} "
                else
                  puts "your input is wrong , pls try again"
                end


                if given_num_p2 > random
                try_p2 +=1
                puts "#{player2} : your given Number is grater than RandNumber , pls try again ,try : #{try_p2} "

                elsif given_num_p2 < random
                try_p2 +=1
                puts "#{player2} : your given Number is smaller than RandNumber , pls try again  ,try : #{try_p2}"
                end
      end
    end



        def playagain_p1
          p1_game
        end

        def playagain_p2

          puts "Do you want to play again ?"
          puts "1 => yes ,2 => No"
          answer = gets.chomp.to_i

          if answer == 2
            puts "good bye "
          elsif answer == 1
            p2_game
          else
            puts "wrong Answer"
          end

        end


end

start_Game = Game.new
start_Game.intro


