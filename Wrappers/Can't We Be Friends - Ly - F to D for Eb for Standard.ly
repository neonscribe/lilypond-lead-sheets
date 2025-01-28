%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/Can't We Be Friends - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Can't We Be Friends - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Can't We Be Friends - Ly - F to D for Eb for Standard"}

%}
