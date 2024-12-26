%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Freddie Hubbard Key"
whatKey = bf,
whatClef = "treble"

bassKey = bf,

\include "../Core/Red Clay - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Red Clay - C\#m to Bbm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Red Clay - Ly - Csm to Bbm for Eb for Standard"}

%}
