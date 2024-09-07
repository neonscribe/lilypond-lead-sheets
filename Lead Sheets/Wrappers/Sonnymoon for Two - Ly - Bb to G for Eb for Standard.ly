%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = g'
whatClef = "treble"

\include "../Core/Sonnymoon for Two - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sonnymoon for Two - Bb to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Sonnymoon for Two - Ly - Bb to G for Eb for Standard"}

%}
