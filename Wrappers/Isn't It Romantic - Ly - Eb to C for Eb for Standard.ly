%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Isn't It Romantic - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Isn't It Romantic - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Isn't It Romantic - Ly - Eb to C for Eb for Standard"}

%}
