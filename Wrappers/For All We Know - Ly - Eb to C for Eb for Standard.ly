%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/For All We Know - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{For All We Know - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/For All We Know - Ly - Eb to C for Eb for Standard"}

%}
