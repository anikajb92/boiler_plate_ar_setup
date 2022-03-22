class Cli

    def prompt
        TTY::Prompt.new
    end

    def welcome
        system('clear')
        puts "WELCOME TO SHOW SELECTOR"
        ask = prompt.yes?("Would you like to select some shows?")
        binding.pry
    end

end 