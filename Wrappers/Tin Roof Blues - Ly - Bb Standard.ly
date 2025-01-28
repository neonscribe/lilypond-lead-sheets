%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Tin Roof Blues - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Tin Roof Blues - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Tin Roof Blues - Ly - Bb Standard"}

%}
