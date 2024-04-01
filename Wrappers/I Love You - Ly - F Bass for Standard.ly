%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/I Love You - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Love You - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/I Love You - Ly - F Bass for Standard"}

%}
