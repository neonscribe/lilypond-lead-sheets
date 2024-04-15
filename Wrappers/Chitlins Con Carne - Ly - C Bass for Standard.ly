%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
bassKey = c
whatClef = "bass"

\include "../Core/Chitlins Con Carne - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Chitlins Con Carne - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Chitlins Con Carne - Ly - C Bass for Standard"}

%}
