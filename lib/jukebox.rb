def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list
  puts "1. Phoenix - 1901
2. Tokyo Police Club - Wait Up
3. Sufjan Stevens - Too Much
4. The Naked and the Famous - Young Blood
5. (Far From) Home - Tiga
6. The Cults - Abducted
7. Phoenix - Consolation Prizes
8. Harry Chapin - Cats in the Cradle
9. Amos Lee - Keep It Loose, Keep It Tight"
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  if user_input.to_i.is_a?(Integer) && user_input.to_i<songs.size && user_input.to_i>0
    puts "Playing #{songs[user_input-1]}"
  elsif songs.include?(user_input)
    puts "Playing #{user_input}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  while user_input != "exit" do
    user_input = ""
    puts "Please enter a command:"
    user_input = gets.chomp
    if user_input == "help"
      help
    elsif user_input == "list"
      list
    elsif user_input == "play"
      play(songs)
    elsif user_input == "exit"
      exit_jukebox
      break
    else
      print "Invalid command."
    end
  end
end
