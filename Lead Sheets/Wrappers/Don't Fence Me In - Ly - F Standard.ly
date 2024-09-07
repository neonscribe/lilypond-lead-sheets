%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Don't Fence Me In - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Don't Fence Me In - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Don't Fence Me In - Ly - F Standard"}

%}
