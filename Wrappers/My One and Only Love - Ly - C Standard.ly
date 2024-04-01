%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/My One and Only Love - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My One and Only Love - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/My One and Only Love - Ly - C Standard"}

%}
