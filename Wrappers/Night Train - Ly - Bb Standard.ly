%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Night Train - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Night Train - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Night Train - Ly - Bb Standard"}

%}
