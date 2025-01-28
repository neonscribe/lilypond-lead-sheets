%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Lazy River - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{(Up a) Lazy River - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Lazy River - Ly - F Standard"}

%}
