%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d,
whatClef = "treble"

\include "../Core/Fee-Fi-Fo-Fum - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Fee-Fi-Fo-Fum - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Fee-Fi-Fo-Fum - Ly - C to D for Bb for Standard"}

%}
