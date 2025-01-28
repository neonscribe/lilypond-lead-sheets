%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Just Squeeze Me - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Just Squeeze Me - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Just Squeeze Me - Ly - F Standard"}

%}
