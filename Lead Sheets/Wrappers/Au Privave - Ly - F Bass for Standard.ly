%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Au Privave - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Au Privave - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Au Privave - Ly - F Bass for Standard"}

%}
