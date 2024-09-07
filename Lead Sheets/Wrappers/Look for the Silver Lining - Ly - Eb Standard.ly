%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Look for the Silver Lining - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Look for the Silver Lining - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Look for the Silver Lining - Ly - Eb Standard"}

%}
