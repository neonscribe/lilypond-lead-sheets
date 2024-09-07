%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = b,
whatClef = "treble"

\include "../Core/Lucky Southern - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lucky Southern - D to B}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Lucky Southern - Ly - D to B for Eb for Standard"}

%}
