%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Well You Needn't - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Well You Needn't - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Well You Needn't - Ly - F Standard"}

%}
