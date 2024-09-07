%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Between the Devil and the Deep Blue Sea - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Between the Devil and the Deep Blue Sea - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Between the Devil and the Deep Blue Sea - Ly - F Bass for Standard"}

%}
