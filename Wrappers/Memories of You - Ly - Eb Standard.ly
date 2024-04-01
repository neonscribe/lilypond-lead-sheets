%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Memories of You - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Memories of You - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Memories of You - Ly - Eb Standard"}

%}
