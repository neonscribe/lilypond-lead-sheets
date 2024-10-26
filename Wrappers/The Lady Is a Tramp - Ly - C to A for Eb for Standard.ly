%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/The Lady Is a Tramp - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Lady Is a Tramp - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/The Lady Is a Tramp - Ly - C to A for Eb for Standard"}

%}
