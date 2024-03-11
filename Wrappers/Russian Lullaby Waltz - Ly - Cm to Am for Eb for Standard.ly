%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Waltz"
whatKey = a
whatClef = "treble"

\include "../Core/Russian Lullaby Waltz - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Russian Lullaby Waltz - Cm to Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Russian Lullaby Waltz - Ly - Cm to Am for Eb for Standard"}

%}
