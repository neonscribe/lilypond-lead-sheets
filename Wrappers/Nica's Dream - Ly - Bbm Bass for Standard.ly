%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,
whatClef = "bass"

\include "../Core/Nica's Dream - Ly Core - Bbm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Nica's Dream - Bbm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Nica's Dream - Ly - Bbm Bass for Standard"}

%}
