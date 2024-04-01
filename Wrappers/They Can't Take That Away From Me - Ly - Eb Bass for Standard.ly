%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/They Can't Take That Away From Me - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{They Can't Take That Away From Me - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/They Can't Take That Away From Me - Ly - Eb Bass for Standard"}

%}
