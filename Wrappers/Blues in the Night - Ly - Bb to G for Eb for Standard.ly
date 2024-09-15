%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = g'
whatClef = "treble"

\include "../Core/Blues in the Night - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blues in the Night - Bb to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Blues in the Night - Ly - Bb to G for Eb for Standard"}

%}
