%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Swing"
whatKey = e
whatClef = "treble"

\include "../Core/Russian Lullaby Swing - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Russian Lullaby Swing - Dm to Em}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Russian Lullaby Swing - Ly - Dm to Em for Bb for Standard"}

%}
