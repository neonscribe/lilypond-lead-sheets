%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Isn't It Romantic - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Isn't It Romantic - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Isn't It Romantic - Ly - Eb Bass for Standard"}

%}
