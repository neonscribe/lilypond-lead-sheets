%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Sonnymoon for Two - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sonnymoon for Two - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Sonnymoon for Two - Ly - Bb Standard"}

%}
