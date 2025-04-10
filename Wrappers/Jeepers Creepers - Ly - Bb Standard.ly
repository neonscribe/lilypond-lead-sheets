%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Jeepers Creepers - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Jeepers Creepers - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Jeepers Creepers - Ly - Bb Standard"}

%}
