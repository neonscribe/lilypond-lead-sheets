%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = f'
whatClef = "treble"

\include "../Core/Jeannine - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Jeannine - Ab to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Jeannine - Ly - Ab to F for Eb for Standard"}

%}
