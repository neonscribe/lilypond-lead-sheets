%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Lullaby in Rhythm - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lullaby in Rhythm - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Lullaby in Rhythm - Ly - Eb to C for Eb for Standard"}

%}
