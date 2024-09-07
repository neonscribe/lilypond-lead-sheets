%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Gee Baby Ain't I Good to You - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Gee Baby, Ain't I Good to You - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Gee Baby Ain't I Good to You - Ly - Eb Standard"}

%}
