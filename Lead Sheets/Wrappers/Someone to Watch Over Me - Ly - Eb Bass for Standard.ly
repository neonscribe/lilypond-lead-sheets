%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Someone to Watch Over Me - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Someone to Watch Over Me - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Someone to Watch Over Me - Ly - Eb Bass for Standard"}

%}
