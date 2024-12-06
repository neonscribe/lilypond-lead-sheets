%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/A Child Is Born - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{A Child Is Born - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/A Child Is Born - Ly - Bb Standard"}

%}
