%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/Au Privave - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Au Privave - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Au Privave - Ly - F to D for Eb for Standard"}

%}
