%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = af
whatClef = "treble"
Title = "Spring Is Here (Bill Evans Chords)"
TempoName = "Slow Ballad [Bill Evans 1960]"
TempoBPM = 57

useBillEvansChords = ##t

\include "../Core/Spring Is Here - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Spring Is Here (Bill Evans Chords) - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Spring Is Here Bill Evans - Ly - Ab Standard"}

%}
