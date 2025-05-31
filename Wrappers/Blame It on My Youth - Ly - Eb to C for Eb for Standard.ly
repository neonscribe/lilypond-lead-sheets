%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Blame It on My Youth - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blame It on My Youth - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Blame It on My Youth - Ly - Eb to C for Eb for Standard"}

%}
