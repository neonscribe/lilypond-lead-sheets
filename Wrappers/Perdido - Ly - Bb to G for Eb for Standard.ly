%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = g'
whatClef = "treble"

\include "../Core/Perdido - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Perdido - B♭ to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Perdido - Ly - Bb to G for Eb for Standard"}

%}
