%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Jo Stafford Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/I Love You - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Love You - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/I Love You - Ly - C Alto Voice"}

%}
