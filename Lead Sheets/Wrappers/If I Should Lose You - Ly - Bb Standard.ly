%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/If I Should Lose You - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{If I Should Lose You - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/If I Should Lose You - Ly - Bb Standard"}

%}
