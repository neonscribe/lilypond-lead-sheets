%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
bassKey = d
whatClef = "treble"

\include "../Core/Con Alma - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Con Alma - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Con Alma - Ly - C to D for Bb for Standard"}

%}
