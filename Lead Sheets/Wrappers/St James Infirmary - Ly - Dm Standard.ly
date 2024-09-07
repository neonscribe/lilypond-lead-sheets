%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/St James Infirmary - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{St. James Infirmary - Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/St James Infirmary - Ly - Dm Standard"}

%}
