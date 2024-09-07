%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Firehouse Key"
whatKey = a
whatClef = "treble"

firehouseChords = ##t

\include "../Core/On the Alamo - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{On the Alamo - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/On the Alamo - Ly - C to A for Eb for Standard"}

%}
