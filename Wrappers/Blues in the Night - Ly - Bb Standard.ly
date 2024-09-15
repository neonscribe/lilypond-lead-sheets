%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Blues in the Night - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blues in the Night - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Blues in the Night - Ly - Bb Standard"}

%}
