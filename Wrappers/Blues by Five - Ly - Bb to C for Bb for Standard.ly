%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Blues by Five - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blues by Five - Bb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Blues by Five - Ly - Bb to C for Bb for Standard"}

%}
