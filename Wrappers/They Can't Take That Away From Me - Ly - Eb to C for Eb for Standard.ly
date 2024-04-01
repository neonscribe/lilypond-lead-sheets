%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/They Can't Take That Away From Me - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{They Can't Take That Away From Me - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/They Can't Take That Away From Me - Ly - Eb to C for Eb for Standard"}

%}
