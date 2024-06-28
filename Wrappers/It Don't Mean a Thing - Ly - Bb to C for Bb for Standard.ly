%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/It Don't Mean a Thing - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It Don't Mean a Thing (If It Ain't Got That Swing) - Bb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/It Don't Mean a Thing - Ly - Bb to C for Bb for Standard"}

%}
