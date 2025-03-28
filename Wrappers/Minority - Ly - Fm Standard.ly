%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Minority - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Minority - Fm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Minority - Ly - Fm Standard"}

%}
