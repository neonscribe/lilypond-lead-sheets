%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Easier Key"
whatKey = c
bassKey = c'
whatClef = "treble"

\include "../Core/Equinox - Ly Core - Csm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Equinox - Cm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Equinox - Ly - Cm Standard"}

%}
