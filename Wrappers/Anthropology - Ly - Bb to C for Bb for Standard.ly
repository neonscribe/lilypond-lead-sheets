%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Anthropology - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Anthropology - Bb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Anthropology - Ly - Bb to C for Bb for Standard"}

%}
