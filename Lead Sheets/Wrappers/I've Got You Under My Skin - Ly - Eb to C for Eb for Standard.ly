%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/I've Got You Under My Skin - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I've Got You Under My Skin - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/I've Got You Under My Skin - Ly - Eb to C for Eb for Standard"}

%}
