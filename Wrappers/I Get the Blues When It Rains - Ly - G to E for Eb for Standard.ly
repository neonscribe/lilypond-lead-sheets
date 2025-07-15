%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/I Get the Blues When It Rains - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Get the Blues When It Rains - G to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/I Get the Blues When It Rains - Ly - G to E for Eb for Standard"}

%}
