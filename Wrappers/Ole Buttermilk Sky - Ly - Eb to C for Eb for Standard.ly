%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Ole Buttermilk Sky - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Ole Buttermilk Sky - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Ole Buttermilk Sky - Ly - Eb to C for Eb for Standard"}

%}
