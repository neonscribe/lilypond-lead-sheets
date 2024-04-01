%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = af
whatClef = "treble"

\include "../Core/Serenade to a Cuckoo - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Serenade to a Cuckoo - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Serenade to a Cuckoo - Ly - Ab Standard"}

%}
