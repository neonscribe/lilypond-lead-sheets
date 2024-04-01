%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = b,,
whatClef = "bass"

\include "../Core/Joseph Joseph - Ly Core - Bm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Joseph, Joseph (Yossel, Yossel) - Bm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Joseph Joseph - Ly - Bm Bass for Standard"}

%}
