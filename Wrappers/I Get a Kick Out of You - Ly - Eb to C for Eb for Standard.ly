%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/I Get a Kick Out of You - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Get a Kick Out of You - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/I Get a Kick Out of You - Ly - Eb to C for Eb for Standard"}

%}
