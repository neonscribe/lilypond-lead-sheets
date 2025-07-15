%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/I'll Never Be the Same - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'll Never Be the Same - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/I'll Never Be the Same - Ly - F Standard"}

%}
