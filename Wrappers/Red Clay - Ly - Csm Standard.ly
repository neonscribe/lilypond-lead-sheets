%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Freddie Hubbard Key"
whatKey = cs
whatClef = "treble"

bassKey = cs

\include "../Core/Red Clay - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Red Clay - C\#m}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Red Clay - Ly - Csm Standard"}

%}
