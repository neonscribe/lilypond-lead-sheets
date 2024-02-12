%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Oleo - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Oleo - B♭ to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Oleo - Ly - Bb to C for Bb for Standard"}

%}
