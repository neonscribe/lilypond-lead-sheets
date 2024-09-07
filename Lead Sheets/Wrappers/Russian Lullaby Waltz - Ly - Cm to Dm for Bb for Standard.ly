%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Russian Lullaby Waltz - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Russian Lullaby (Waltz) - Cm to Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Russian Lullaby Waltz - Ly - Cm to Dm for Bb for Standard"}

%}
