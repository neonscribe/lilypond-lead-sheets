%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/For Sentimental Reasons - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{(I Love You) For Sentimental Reasons - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/For Sentimental Reasons - Ly - F to D for Eb for Standard"}

%}
