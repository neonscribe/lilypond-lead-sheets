%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Miles Davis Key"
whatKey = bf,
whatClef = "treble"

\include "../Core/In Your Own Sweet Way - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{In Your Own Sweet Way - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/In Your Own Sweet Way - Ly - Bb Standard"}

%}
