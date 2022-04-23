require "tty-prompt"
#Prompt script
$prompt = TTY::Prompt.new(active_color: :cyan, per_page: 16)


def delete
    puts "Are you sure you want to remove selected option? (y/n)".colorize(:red)
    confirm = gets.chomp
    if confirm == "y"
      my_spec.delete(option)
    else puts "User cancelled"
  end
end