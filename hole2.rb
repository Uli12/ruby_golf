# a = rock 
# b = paper 
# c = scissors
# a < b 
# b < c
# c < a
def menu
  puts "Choose a) for rock, b) for paper, and c) for scissors and play: Rock Paper Scissors!"
  puts "To exit choose d)"

  @choice = gets.chomp.downcase

  def rps
    arr = ["a", "b", "c"]
    computer = arr.sample
    puts computer
    if @choice == computer
      puts "Draw!"
    elsif @choice == "a" && computer == "b" || @choice == "b" && computer == "c" || @choice == "c" && computer == "a"
      puts "You Lose!"
    elsif @choice == "a" && computer == "c" || @choice == "b" && computer == "a" || @choice == "c" && computer == "b"
      puts "You Win!"
    elsif @choice == "d" 
      exit
    else
      puts "Invalid letter, please try again"
      menu
    end
  end
  rps
end
menu
