require "cli/calculator/version"

module Cli
  module Calculator
    input_prompt = "Please enter an integer calulation you want the answer to: "
    allowed_input = ["1","2", "3", "4", "5", "6", "7", "8", "9", "0", "(", ")", "+","-", "*", "/", " " ]
    system "clear"
    
    def main
      loop do
    
        print input_prompt
        selection = gets.to_s
        break if selection == "x"
        next if input_not_allowed(selection)
        puts eval(selection)
  
      end
    end
    

    def input_not_allowed(selection)
      selection.split.each do |i|
        return true unless allowed_input.include?(i)
      end
      return false
    end

  end
end
