%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a,
whatClef = "treble"

\include "../Core/I'll Be Home for Christmas - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'll Be Home for Christmas - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/I'll Be Home for Christmas - Ly - C to A for Eb for Standard"}

%}
