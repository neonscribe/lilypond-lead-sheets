%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Seul Ce Soir - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{(Je Suis) Seul Ce Soir - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Seul Ce Soir - Ly - C to A for Eb for Standard"}

%}
