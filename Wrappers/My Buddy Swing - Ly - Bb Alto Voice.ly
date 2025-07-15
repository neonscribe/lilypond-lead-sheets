%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Nancy Sinatra Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/My Buddy Swing - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Buddy (Swing) - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/My Buddy Swing - Ly - Bb Standard"}

%}
