%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/I'll Take Romance Waltz - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'll Take Romance (3/4) - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/I'll Take Romance Waltz - Ly - F to D for Eb for Standard"}

%}
