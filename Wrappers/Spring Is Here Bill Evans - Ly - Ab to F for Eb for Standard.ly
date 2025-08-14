%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = f'
whatClef = "treble"
Title = "Spring Is Here (Bill Evans Chords)"
TempoName = "Slow Ballad [Bill Evans 1960]"
TempoBPM = 57

useBillEvansChords = ##t

\include "../Core/Spring Is Here - Ly Core - Ab.ly"

%{

\song{Spring Is Here (Bill Evans Chords) - Ab to F}{"../Standard/Eb/Spring Is Here Bill Evans - Ly - Ab to F for Eb for Standard"}

%}
