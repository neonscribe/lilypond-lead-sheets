%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

chordChart = ##t
guitarChords = ##t
notationChords = ##t

\include "../Core/So What - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{So What - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/So What - Ly - C Standard"}

%}
