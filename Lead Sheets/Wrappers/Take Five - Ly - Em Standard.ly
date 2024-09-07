%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Easier Key"
whatKey = e
whatClef = "treble"

\include "../Core/Take Five - Ly Core - Ebm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Take Five - Em}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Take Five - Ly - Em Standard"}

%}
