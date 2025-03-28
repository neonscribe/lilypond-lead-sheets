%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/I'll Take Romance Waltz - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'll Take Romance (3/4) - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/I'll Take Romance Waltz - Ly - F Standard"}

%}
