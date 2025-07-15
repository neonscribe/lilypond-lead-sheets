%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/I Remember Clifford - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Remember Clifford - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/I Remember Clifford - Ly - Eb to C for Eb for Standard"}

%}
