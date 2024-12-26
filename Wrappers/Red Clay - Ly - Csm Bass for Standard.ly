%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Freddie Hubbard Key"
whatKey = cs,
whatClef = "bass"

bassKey = cs

\include "../Core/Red Clay - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Red Clay - C\#m Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Red Clay - Ly - Csm Bass for Standard"}

%}
