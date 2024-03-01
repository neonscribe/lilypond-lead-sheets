%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c
whatClef = "bass"

chordChart = ##t
guitarChords = ##t
notationChords = ##t

\include "../Core/So What - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{So What - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/So What - Ly - C Bass for Standard"}

%}
