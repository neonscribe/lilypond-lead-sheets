%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/The More I See You - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The More I See You - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/The More I See You - Ly - Eb to C for Eb for Standard"}

%}
