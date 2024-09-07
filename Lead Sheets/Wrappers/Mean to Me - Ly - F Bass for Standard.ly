%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Mean to Me - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Mean to Me - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Mean to Me - Ly - F Bass for Standard"}

%}
