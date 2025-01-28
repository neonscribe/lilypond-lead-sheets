%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Confirmation - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Confirmation - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Confirmation - Ly - F Bass for Standard"}

%}
