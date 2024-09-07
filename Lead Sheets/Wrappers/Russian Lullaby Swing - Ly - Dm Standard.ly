%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Russian Lullaby Swing - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Russian Lullaby (Swing) - Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Russian Lullaby Swing - Ly - Dm Standard"}

%}
