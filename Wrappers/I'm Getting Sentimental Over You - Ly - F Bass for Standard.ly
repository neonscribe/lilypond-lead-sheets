%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/I'm Getting Sentimental Over You - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'm Getting Sentimental Over You - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/I'm Getting Sentimental Over You - Ly - F Bass for Standard"}

%}
