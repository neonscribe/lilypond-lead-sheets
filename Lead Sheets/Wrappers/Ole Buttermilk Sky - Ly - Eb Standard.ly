%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Ole Buttermilk Sky - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Ole Buttermilk Sky - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Ole Buttermilk Sky - Ly - Eb Standard"}

%}
