%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = g'
whatClef = "treble"

\include "../Core/Have Yourself a Merry Little Christmas - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Have Yourself a Merry Little Christmas - Bb to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Have Yourself a Merry Little Christmas - Ly - Bb to G for Eb for Standard"}

%}
