%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/It Don't Mean a Thing - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It Don't Mean a Thing (If It Ain't Got That Swing) - Bb to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/It Don't Mean a Thing - Ly - Bb to G for Eb for Standard"}

%}
