# given song and interval, transpose notes by interval
# create collection of all notes
# transpose causes note index to change
# -- if index+1 is positive, index goes from 12 to zero
# -- if index+1 is negative, index moves from zero to 12

notes_sharps = ['A', 'A#', 'B', 'C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#']
notes_flats = ['A', 'Bb', 'B', 'C', 'Db', 'D', 'Eb', 'E', 'F', 'Gb', 'G', 'Ab']

def transpose(song, interval)
  
end

p ranspose(['A'], 0) # ['A'])
p transpose(['A'], 1) # ['A#'])
p transpose(['E'], 5) # ['A'])
p transpose(['D#'] , 8) # ['B'])