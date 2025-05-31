%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Blame It on My Youth - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blame It on My Youth - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Blame It on My Youth - Ly - Eb Standard"}

%}
