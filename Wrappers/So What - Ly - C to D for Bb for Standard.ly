%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

chordChart = ##t
guitarChords = ##t
notationChords = ##t

\include "../Core/So What - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{So What - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/So What - Ly - C to D for Bb for Standard"}

%}
