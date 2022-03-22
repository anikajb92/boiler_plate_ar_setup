class Cli

    def prompt
        TTY::Prompt.new
    end

    def welcome
        system('clear')
        puts "WELCOME TO SHOW SELECTOR"
        ask = prompt.yes?("Would you like to select some shows?")
        if ask
            list_shows
        else
            puts "Too bad"
            welcome
        end
    end

    def list_shows
        puts Show.all.pluck(:title)
    end

end 