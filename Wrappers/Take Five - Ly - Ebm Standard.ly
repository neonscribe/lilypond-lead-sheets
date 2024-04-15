%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Take Five - Ly Core - Ebm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Take Five - Ebm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Take Five - Ly - Ebm Standard"}

%}
