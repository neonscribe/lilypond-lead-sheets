%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Birk's Works - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Birk's Works - Fm to Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Birk's Works - Ly - Fm to Dm for Eb for Standard"}

%}
