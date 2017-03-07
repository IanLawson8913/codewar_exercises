# input: string of words (upcased) surrounded by different numbers of "WUB"
# -- "WUB" appears before first word 0 or more times
# --       appears between words 1 or more times
# --       appears after last word 0 or more times
# output: string of just the words, no "WUB"s

# replace all occurances of "WUB" with " "
# 

def song_decoder(song)
  song.gsub(/WUB/i, ' ').gsub(/(\A\s+|\s+\z)/, '').gsub(/\s+/, ' ')
end

p song_decoder("AWUBBWUBC") 
# "A B C","WUB should be replaced by 1 space");
p song_decoder("AWUBWUBWUBBWUBWUBWUBC") 
# "A B C","multiples WUB should be replaced by only 1 sp
p song_decoder("WUBAWUBBWUBCWUB") 
# "A B C", "heading or trailing spaces should be removed");

def song_decoder(song)
  song.gsub('WUB', ' ').strip.squeeze
end

p song_decoder("AWUBBWUBC") 
# "A B C","WUB should be replaced by 1 space");
p song_decoder("AWUBWUBWUBBWUBWUBWUBC") 
# "A B C","multiples WUB should be replaced by only 1 sp
p song_decoder("WUBAWUBBWUBCWUB") 
# "A B C", "heading or trailing spaces should be removed");