%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Look for the Silver Lining - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Look for the Silver Lining - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Look for the Silver Lining - Ly - Eb to C for Eb for Standard"}

%}
