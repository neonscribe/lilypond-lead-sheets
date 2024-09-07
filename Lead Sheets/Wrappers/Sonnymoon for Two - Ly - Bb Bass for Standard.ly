%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,
whatClef = "bass"

\include "../Core/Sonnymoon for Two - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sonnymoon for Two - Bb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Sonnymoon for Two - Ly - Bb Bass for Standard"}

%}
