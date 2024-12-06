%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/A Child Is Born - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{A Child Is Born - Bb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/A Child Is Born - Ly - Bb to C for Bb for Standard"}

%}
