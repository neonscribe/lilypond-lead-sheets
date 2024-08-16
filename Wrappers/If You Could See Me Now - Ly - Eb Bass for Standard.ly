%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/If You Could See Me Now - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{If You Could See Me Now - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/If You Could See Me Now - Ly - Eb Bass for Standard"}

%}
