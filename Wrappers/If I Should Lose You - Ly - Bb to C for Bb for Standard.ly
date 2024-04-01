%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/If I Should Lose You - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{If I Should Lose You - Bb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/If I Should Lose You - Ly - Bb to C for Bb for Standard"}

%}
