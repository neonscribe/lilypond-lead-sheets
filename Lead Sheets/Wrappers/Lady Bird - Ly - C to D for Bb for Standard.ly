%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Lady Bird - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lady Bird - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Lady Bird - Ly - C to D for Bb for Standard"}

%}
