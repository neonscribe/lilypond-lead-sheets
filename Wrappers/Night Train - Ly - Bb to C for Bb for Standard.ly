%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Night Train - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Night Train - Bb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Night Train - Ly - Bb to C for Bb for Standard"}

%}
