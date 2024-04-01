%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Firehouse Key"
whatKey = c
whatClef = "treble"

firehouseChords = ##t

\include "../Core/On the Alamo - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{On the Alamo - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/On the Alamo - Ly - C Standard"}

%}
