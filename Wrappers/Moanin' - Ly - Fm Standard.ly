%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Moanin' - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Moanin' - Fm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Moanin' - Ly - Fm Standard"}

%}
