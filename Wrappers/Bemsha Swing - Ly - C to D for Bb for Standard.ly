%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Bemsha Swing - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bemsha Swing - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Bemsha Swing - Ly - C to D for Bb for Standard"}

%}
