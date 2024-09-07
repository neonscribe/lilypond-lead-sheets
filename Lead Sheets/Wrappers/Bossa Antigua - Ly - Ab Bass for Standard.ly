%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = af,
whatClef = "bass"

\include "../Core/Bossa Antigua - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bossa Antigua - Ab Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Bossa Antigua - Ly - Ab Bass for Standard"}

%}
