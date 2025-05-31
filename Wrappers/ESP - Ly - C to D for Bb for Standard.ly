%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/ESP - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{E.S.P. - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/ESP - Ly - C to D for Bb for Standard"}

%}
