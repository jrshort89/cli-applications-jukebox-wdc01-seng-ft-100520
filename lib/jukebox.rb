# Add your code here
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
 puts "I accept the following commands:"
 puts "- help : displays this help message"
 puts "- list : displays a list of songs you can play"
 puts "- play : lets you choose a song to play"
 puts "- exit : exits this program"
end

def list(song_list)
  song_list.each_with_index { |song, index| 
    puts "#{index + 1}. #{song}"
  }
end

def play(song_list) 
  puts "Please enter a song name or number:"
  input = gets.strip
  song_name = song_list[input.to_i - 1]
  if (1..9).to_a.include?(input.to_i) 
    puts "Playing #{song_name}"
  elsif song_list.include?(input)
    puts "Playing #{input}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  run = true
  while run == true do
  puts "Please enter a command:"
  input = gets.strip
    if input == "exit"
      run = false
      exit_jukebox
    end
    if input == "help"
      help
    elsif input == "play"
      play(songs)
    elsif input == "list"
      list(songs)
    end
  end
end


