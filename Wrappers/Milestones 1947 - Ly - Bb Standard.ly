%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Milestones 1947 - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Milestones (1947) - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Milestones 1947 - Ly - Bb Standard"}

%}
