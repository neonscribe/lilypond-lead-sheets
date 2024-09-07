%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Jordu - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Jordu - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Jordu - Ly - Eb Standard"}

%}
