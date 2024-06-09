%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = a,,
whatClef = "bass"

\include "../Core/Agua de Beber - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Água de Beber (Water to Drink) - Am Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Agua de Beber - Ly - Am Bass for Standard"}

%}
