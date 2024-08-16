%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Harry James, Chet Baker Key"
whatKey = f
whatClef = "treble"

\include "../Core/My Buddy Swing - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Buddy (Swing) - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/My Buddy Swing - Ly - F Standard"}

%}
