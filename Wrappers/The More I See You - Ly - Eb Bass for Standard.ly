%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/The More I See You - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The More I See You - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/The More I See You - Ly - Eb Bass for Standard"}

%}
