%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Milestones 1947 - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Milestones (1947) - Bb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Milestones 1947 - Ly - Bb to C for Bb for Standard"}

%}
