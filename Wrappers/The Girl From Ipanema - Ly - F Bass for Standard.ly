%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/The Girl From Ipanema - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Girl From Ipanema - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/The Girl From Ipanema - Ly - F Bass for Standard"}

%}
