%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/For All We Know - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{For All We Know - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/For All We Know - Ly - Eb Standard"}

%}
