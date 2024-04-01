%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,,
whatClef = "bass"

\include "../Core/Si Tu Vois Ma Mere - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Si Tu Vois Ma Mère - Bb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Si Tu Vois Ma Mere - Ly - Bb Bass for Standard"}

%}
