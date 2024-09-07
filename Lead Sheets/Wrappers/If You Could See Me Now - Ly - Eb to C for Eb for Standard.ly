%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/If You Could See Me Now - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{If You Could See Me Now - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/If You Could See Me Now - Ly - Eb to C for Eb for Standard"}

%}
