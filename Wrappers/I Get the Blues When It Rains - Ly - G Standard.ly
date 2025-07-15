%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/I Get the Blues When It Rains - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Get the Blues When It Rains - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/I Get the Blues When It Rains - Ly - G Standard"}

%}
