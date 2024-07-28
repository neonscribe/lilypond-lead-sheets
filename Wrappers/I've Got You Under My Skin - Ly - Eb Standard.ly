%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/I've Got You Under My Skin - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I've Got You Under My Skin - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/I've Got You Under My Skin - Ly - Eb Standard"}

%}
