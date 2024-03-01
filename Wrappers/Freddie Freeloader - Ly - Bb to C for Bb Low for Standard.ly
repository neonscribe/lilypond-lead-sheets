%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb Low for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Freddie Freeloader - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Freddie Freeloader - B♭ to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Freddie Freeloader - Ly - Bb to C for Bb Low for Standard"}

%}
