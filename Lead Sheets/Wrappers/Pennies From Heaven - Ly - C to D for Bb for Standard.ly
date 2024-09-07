%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Pennies From Heaven - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Pennies From Heaven - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Pennies From Heaven - Ly - C to D for Bb for Standard"}

%}
