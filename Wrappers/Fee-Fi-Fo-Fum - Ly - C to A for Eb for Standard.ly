%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a,
whatClef = "treble"

\include "../Core/Fee-Fi-Fo-Fum - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Fee-Fi-Fo-Fum - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Fee-Fi-Fo-Fum - Ly - C to A for Eb for Standard"}

%}
