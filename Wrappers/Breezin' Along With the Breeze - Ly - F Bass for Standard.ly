%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Breezin' Along With the Breeze - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Breezin' Along With the Breeze - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Breezin' Along With the Breeze - Ly - F Bass for Standard"}

%}
