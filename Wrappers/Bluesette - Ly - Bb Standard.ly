%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Bluesette - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bluesette - B♭}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bluesette - Ly - Bb Standard"}

%}
