require "tty-prompt"
#Prompt script
$prompt = TTY::Prompt.new(active_color: :cyan, per_page: 16)


# def delete_option
#     start = $prompt.select("Choose an option to delete:", [$my_spec])
#     start
# end
def delete
    puts "Are you sure you want to remove selected option? (y/n)"
    confirm = gets.chomp
    if confirm == "y"
      my_spec.delete(option)
    else puts "User cancelled"
  end
end