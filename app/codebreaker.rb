class Codebreaker
  class Game
    attr_reader :output
    WRONG_FORMATTED_GUESS = "Try guessing a number with four digits"
    NUMBER_MATCH = "-"
    EXACT_MATCH = "+"
    NO_MATCH = ''


    def initialize(output)
      @output = output
    end

    def start(secret_number)
      @secret_number = secret_number

      output.puts "Welcome to Codebreaker"
      output.puts "Enter guess:"
    end

    def correct_format(input)
        if input.length != 4
          output.puts WRONG_FORMATTED_GUESS
          return false
        else
          return true
        end
      end

      def guess(input)
          if correct_format(input) == true
          else
            return
         end

          secret_numbers = @secret_number.chars
          input_array = input.chars

          result = []
          input_array.map.with_index do |number, index|
          if input_array[index] == secret_numbers[index]
            result << EXACT_MATCH
          elsif secret_numbers.include?(number)
            result << NUMBER_MATCH
          else
             result << NO_MATCH
          end
        end
        output.puts result.sort.join("")
        end
      end
    end
