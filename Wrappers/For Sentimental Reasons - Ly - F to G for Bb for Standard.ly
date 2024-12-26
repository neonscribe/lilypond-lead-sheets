%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/For Sentimental Reasons - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{(I Love You) For Sentimental Reasons - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/For Sentimental Reasons - Ly - F to G for Bb for Standard"}

%}
