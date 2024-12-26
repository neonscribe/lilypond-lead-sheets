%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/For Sentimental Reasons - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{(I Love You) For Sentimental Reasons - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/For Sentimental Reasons - Ly - F Bass for Standard"}

%}
