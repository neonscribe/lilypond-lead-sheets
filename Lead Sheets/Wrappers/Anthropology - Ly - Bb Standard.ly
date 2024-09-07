%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Anthropology - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Anthropology - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Anthropology - Ly - Bb Standard"}

%}
