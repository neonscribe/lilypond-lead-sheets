%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Blame It on My Youth - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blame It on My Youth - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Blame It on My Youth - Ly - Eb to F for Bb for Standard"}

%}
