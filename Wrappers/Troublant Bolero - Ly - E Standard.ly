%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Troublant Bolero - Ly Core - E.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Troublant Bolero - E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Troublant Bolero - Ly - E Standard"}

%}
