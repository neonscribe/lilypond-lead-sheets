%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Let's Get Away From It All - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Let's Get Away From It All - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Let's Get Away From It All - Ly - Eb Bass for Standard"}

%}
