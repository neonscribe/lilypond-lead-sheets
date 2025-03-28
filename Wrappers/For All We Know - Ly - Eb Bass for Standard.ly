%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/For All We Know - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{For All We Know - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/For All We Know - Ly - Eb Bass for Standard"}

%}
