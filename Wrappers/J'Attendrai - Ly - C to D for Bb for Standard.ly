%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/J'Attendrai - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{J'Attendrai - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/J'Attendrai - Ly - C to D for Bb for Standard"}

%}
