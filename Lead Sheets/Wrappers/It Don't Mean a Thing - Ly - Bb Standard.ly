%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/It Don't Mean a Thing - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It Don't Mean a Thing (If It Ain't Got That Swing) - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/It Don't Mean a Thing - Ly - Bb Standard"}

%}
