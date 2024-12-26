%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/For Sentimental Reasons - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{(I Love You) For Sentimental Reasons - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/For Sentimental Reasons - Ly - F Standard"}

%}
