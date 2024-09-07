%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Look for the Silver Lining - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Look for the Silver Lining - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Look for the Silver Lining - Ly - Eb Bass for Standard"}

%}
