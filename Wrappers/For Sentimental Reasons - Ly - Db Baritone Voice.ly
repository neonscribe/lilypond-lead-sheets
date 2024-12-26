%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Nat King Cole Key"
whatKey = df
whatClef = "treble"

\include "../Core/For Sentimental Reasons - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{(I Love You) For Sentimental Reasons - Db}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Baritone Voice/For Sentimental Reasons - Ly - Db Baritone Voice"}

%}
