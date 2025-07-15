%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Spring Will Be a Little Late This Year - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Spring Will Be a Little Late This Year - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Spring Will Be a Little Late This Year - Ly - Eb to C for Eb for Standard"}

%}
