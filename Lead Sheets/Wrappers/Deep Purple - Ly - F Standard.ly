%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Deep Purple - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Deep Purple - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Deep Purple - Ly - F Standard"}

%}
