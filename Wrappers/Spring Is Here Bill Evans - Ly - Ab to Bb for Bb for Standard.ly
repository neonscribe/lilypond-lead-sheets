%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = bf
whatClef = "treble"
Title = "Spring Is Here (Bill Evans Chords)"
TempoName = "Slow Ballad"
TempoBPM = 57

useBillEvansChords = ##t

\include "../Core/Spring Is Here - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Spring Is Here (Bill Evans Chords)- Ab to Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Spring Is Here Bill Evans - Ly - Ab to Bb for Bb for Standard"}

%}
