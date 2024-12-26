%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Dinah Shore, Linda Ronstadt Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/For Sentimental Reasons - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{(I Love You) For Sentimental Reasons - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/For Sentimental Reasons - Ly - Bb Alto Voice"}

%}
