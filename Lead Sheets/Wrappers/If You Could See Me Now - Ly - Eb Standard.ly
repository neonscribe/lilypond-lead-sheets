%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/If You Could See Me Now - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{If You Could See Me Now - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/If You Could See Me Now - Ly - Eb Standard"}

%}
