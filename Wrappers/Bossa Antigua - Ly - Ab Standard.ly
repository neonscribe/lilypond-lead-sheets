%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = af
whatClef = "treble"

\include "../Core/Bossa Antigua - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bossa Antigua - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bossa Antigua - Ly - Ab Standard"}

%}
