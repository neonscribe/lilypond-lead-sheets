%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = b,
whatClef = "treble"

\include "../Core/St James Infirmary - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{St. James Infirmary - Dm to Bm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/St James Infirmary - Ly - Dm to Bm for Eb for Standard"}

%}
