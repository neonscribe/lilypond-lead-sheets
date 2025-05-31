%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = af,
whatClef = "bass"

\include "../Core/Ceora - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Ceora - Ab Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Ceora - Ly - Ab Bass for Standard"}

%}
