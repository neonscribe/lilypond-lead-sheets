%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = af,
bassKey = af
whatClef = "bass"

\include "../Core/Naima - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Naima - Ab Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Naima - Ly - Ab Bass for Standard"}

%}
