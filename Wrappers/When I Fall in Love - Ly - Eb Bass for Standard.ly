%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/When I Fall in Love - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{When I Fall in Love - E♭ Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/When I Fall in Love - Ly - Eb Bass for Standard"}

%}
