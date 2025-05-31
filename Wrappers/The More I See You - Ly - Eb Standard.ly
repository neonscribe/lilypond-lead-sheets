%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/The More I See You - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The More I See You - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/The More I See You - Ly - Eb Standard"}

%}
