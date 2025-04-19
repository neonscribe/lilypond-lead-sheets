%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Sway - Ly Core - Em.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sway - Em}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Sway - Ly - Em Standard"}

%}
