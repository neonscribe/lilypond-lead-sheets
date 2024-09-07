%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Gee Baby Ain't I Good to You - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Gee Baby, Ain't I Good to You - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Gee Baby Ain't I Good to You - Ly - Eb to C for Eb for Standard"}

%}
