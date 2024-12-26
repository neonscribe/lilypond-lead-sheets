%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Lullaby in Rhythm - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lullaby in Rhythm - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Lullaby in Rhythm - Ly - Eb Standard"}

%}
