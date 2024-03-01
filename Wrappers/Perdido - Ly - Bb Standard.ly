%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Perdido - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Perdido - B♭}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Perdido - Ly - Bb Standard"}

%}
