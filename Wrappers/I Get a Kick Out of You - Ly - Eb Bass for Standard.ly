%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/I Get a Kick Out of You - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Get a Kick Out of You - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/I Get a Kick Out of You - Ly - Eb Bass for Standard"}

%}
