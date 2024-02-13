from chord_extractor.extractors import Chordino

SOURCE_FILE = 'path_to_file.mp4'

# Setup Chordino with one of several parameters that can be passed
chordino = Chordino(roll_on=1)  

# Optional, only if we need to extract from a file that isn't accepted by librosa
conversion_file_path = chordino.preprocess(SOURCE_FILE)

# Run extraction
chords = chordino.extract(conversion_file_path)
# => [  ChordChange(chord='N', timestamp=0.371519274), 
#       ChordChange(chord='C', timestamp=0.743038548), 
#       ChordChange(chord='Am7b5', timestamp=8.54494331),...]