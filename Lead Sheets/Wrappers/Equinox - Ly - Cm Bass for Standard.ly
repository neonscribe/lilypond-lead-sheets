%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Easier Key"
whatKey = c,
bassKey = c'
whatClef = "bass"

\include "../Core/Equinox - Ly Core - Csm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Equinox - Cm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Equinox - Ly - Cm Bass for Standard"}

%}
