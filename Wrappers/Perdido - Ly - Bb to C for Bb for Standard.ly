%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Perdido - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Perdido - B♭ to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Perdido - Ly - Bb to C for Bb for Standard"}

%}
