%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb High for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Someday My Prince Will Come - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Someday My Prince Will Come - B♭ to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Someday My Prince Will Come - Ly - Bb to C for Bb High for Standard"}

%}
