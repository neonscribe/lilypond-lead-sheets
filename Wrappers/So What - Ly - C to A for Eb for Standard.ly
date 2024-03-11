%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a,
whatClef = "treble"

chordChart = ##t
guitarChords = ##t
notationChords = ##t

\include "../Core/So What - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{So What - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/So What - Ly - C to A for Eb for Standard"}

%}
