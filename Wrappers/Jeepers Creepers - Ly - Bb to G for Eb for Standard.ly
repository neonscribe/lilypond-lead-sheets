%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = g'
whatClef = "treble"

\include "../Core/Jeepers Creepers - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Jeepers Creepers - Bb to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Jeepers Creepers - Ly - Bb to G for Eb for Standard"}

%}
