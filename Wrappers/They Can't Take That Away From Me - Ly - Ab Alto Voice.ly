%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Chris Connor Key"
whatKey = af,
whatClef = "treble_8"

\include "../Core/They Can't Take That Away From Me - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{They Can't Take That Away From Me - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/They Can't Take That Away From Me - Ly - Ab Alto Voice"}

%}
