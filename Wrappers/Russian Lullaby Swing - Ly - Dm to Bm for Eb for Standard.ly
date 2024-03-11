%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Swing"
whatKey = b,
whatClef = "treble"

\include "../Core/Russian Lullaby Swing - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Russian Lullaby Swing - Dm to Bm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Russian Lullaby Swing - Ly - Dm to Bm for Eb for Standard"}

%}
