%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Blues in the Night - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blues in the Night - Bb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Blues in the Night - Ly - Bb to C for Bb for Standard"}

%}
