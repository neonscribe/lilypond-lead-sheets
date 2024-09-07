%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = e,
bassKey = e
whatClef = "bass"

\include "../Core/Troublant Bolero - Ly Core - E.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Troublant Bolero - E Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Troublant Bolero - Ly - E Bass for Standard"}

%}
