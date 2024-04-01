%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/My One and Only Love - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My One and Only Love - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/My One and Only Love - Ly - C to D for Bb for Standard"}

%}
