%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Alice in Wonderland - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Alice in Wonderland - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Alice in Wonderland - Ly - C to D for Bb for Standard"}

%}
