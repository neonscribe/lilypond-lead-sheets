%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/My One and Only Love - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My One and Only Love - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/My One and Only Love - Ly - C Bass for Standard"}

%}
