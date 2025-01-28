%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/Moanin' Low - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Moanin' Low - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Moanin' Low - Ly - F to D for Eb for Standard"}

%}
