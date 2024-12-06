%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Have Yourself a Merry Little Christmas - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Have Yourself a Merry Little Christmas - Bb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Have Yourself a Merry Little Christmas - Ly - Bb to C for Bb for Standard"}

%}
