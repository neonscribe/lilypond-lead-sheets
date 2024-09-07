%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/Moanin' - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Moanin' - Fm to Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Moanin' - Ly - Fm to Dm for Eb for Standard"}

%}
