%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/They Can't Take That Away From Me - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{They Can't Take That Away From Me - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/They Can't Take That Away From Me - Ly - Eb Standard"}

%}
