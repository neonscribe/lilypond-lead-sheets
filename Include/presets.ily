%% -*- Mode: LilyPond -*-

#(define instrument
  (if (not (defined? 'instrument))
   "Standard Key"
   instrument))

#(define whatClef
  (if (not (defined? 'whatClef))
   "treble"
   whatClef))

showLyrics = ##t

#(define maleSinger
  (if (not (defined? 'maleSinger))
   #t
   maleSinger))

#(define objectGenderMale
  (if (not (defined? 'objectGenderMale))
   #f
   objectGenderMale))
