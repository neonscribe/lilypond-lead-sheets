%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/I Get a Kick Out of You - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Get a Kick Out of You - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/I Get a Kick Out of You - Ly - Eb Standard"}

%}
