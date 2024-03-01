%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Someday My Prince Will Come - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Someday My Prince Will Come - B♭ to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Someday My Prince Will Come - Ly - Bb to G for Eb for Standard"}

%}
