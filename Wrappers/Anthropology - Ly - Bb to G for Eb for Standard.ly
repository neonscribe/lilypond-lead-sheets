%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Anthropology - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Anthropology - Bb to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Anthropology - Ly - Bb to G for Eb for Standard"}

%}
