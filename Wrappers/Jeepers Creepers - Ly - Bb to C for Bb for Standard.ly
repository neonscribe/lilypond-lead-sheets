%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Jeepers Creepers - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Jeepers Creepers - Bb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Jeepers Creepers - Ly - Bb to C for Bb for Standard"}

%}
