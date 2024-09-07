%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Russian Lullaby Waltz - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Russian Lullaby (Waltz) - Cm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Russian Lullaby Waltz - Ly - Cm Standard"}

%}
