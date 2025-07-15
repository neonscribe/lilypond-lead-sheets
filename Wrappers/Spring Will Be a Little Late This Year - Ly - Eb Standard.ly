%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Spring Will Be a Little Late This Year - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Spring Will Be a Little Late This Year - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Spring Will Be a Little Late This Year - Ly - Eb Standard"}

%}
