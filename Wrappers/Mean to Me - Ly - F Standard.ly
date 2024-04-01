%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Mean to Me - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Mean to Me - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Mean to Me - Ly - F Standard"}

%}
