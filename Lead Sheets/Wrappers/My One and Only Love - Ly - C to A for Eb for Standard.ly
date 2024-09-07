%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/My One and Only Love - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My One and Only Love - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/My One and Only Love - Ly - C to A for Eb for Standard"}

%}
