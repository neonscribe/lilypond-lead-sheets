%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/I'll Never Smile Again - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'll Never Smile Again - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/I'll Never Smile Again - Ly - Eb to C for Eb for Standard"}

%}
