%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = g'
whatClef = "treble"

\include "../Core/If I Should Lose You - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{If I Should Lose You - Bb to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/If I Should Lose You - Ly - Bb to G for Eb for Standard"}

%}
