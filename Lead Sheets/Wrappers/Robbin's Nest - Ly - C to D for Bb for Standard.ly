%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Robbin's Nest - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Robbin's Nest - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Robbin's Nest - Ly - C to D for Bb for Standard"}

%}
