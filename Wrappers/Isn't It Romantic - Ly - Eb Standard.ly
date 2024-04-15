%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Isn't It Romantic - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Isn't It Romantic - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Isn't It Romantic - Ly - Eb Standard"}

%}
