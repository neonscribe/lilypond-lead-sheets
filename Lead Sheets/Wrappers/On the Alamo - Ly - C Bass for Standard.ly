%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Firehouse Key"
whatKey = c,
whatClef = "bass"

firehouseChords = ##t

\include "../Core/On the Alamo - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{On the Alamo - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/On the Alamo - Ly - C Bass for Standard"}

%}
