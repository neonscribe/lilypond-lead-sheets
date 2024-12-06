%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Karrin Allyson Key"
whatKey = bf,
whatClef = "treble"

\include "../Core/We Kiss in a Shadow - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{We Kiss in a Shadow - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/We Kiss in a Shadow - Ly - Bb Alto Voice"}

%}
