%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Blues by Five - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blues by Five - Bb to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Blues by Five - Ly - Bb to G for Eb for Standard"}

%}
