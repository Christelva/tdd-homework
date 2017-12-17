class Codebreaker
  class Game
    attr_reader :output
WRONG_FORMATTED_GUESS = "Try guessing a number with 4 digits"


    def initialize(output)
      @output = output
    end

    def start(secret_number)
      @secret_number = secret_number

      output.puts "Welcome to Codebreaker"
      output.puts "Enter guess:"
    end

    def guess(input)
        unless input.length == 4
          puts WRONG_FORMATTED_GUESS

        end

        if input.chars.map.with_index do |e, i|

          case @secret_number.chars.index(e)
            when nil then print''
            when i then print '+'
            else  print '-'
          end
        end.join

  output.puts "\n You typed: #{input}"
    end
  end
end
end
