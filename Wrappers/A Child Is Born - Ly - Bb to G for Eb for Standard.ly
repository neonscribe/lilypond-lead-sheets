%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/A Child Is Born - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{A Child Is Born - Bb to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/A Child Is Born - Ly - Bb to G for Eb for Standard"}

%}
