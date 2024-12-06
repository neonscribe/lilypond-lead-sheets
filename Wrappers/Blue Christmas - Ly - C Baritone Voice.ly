%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ernest Tubb, Hank Thompson, Jim Reeves, Brenda Lee, Tammy Wynette Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Blue Christmas - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blue Christmas - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Baritone Voice/Blue Christmas - Ly - C Baritone Voice"}

%}
