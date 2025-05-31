%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Grace Potter Key"
whatKey = d
whatClef = "treble"

\include "../Core/Friend of the Devil - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Friend of the Devil - D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Friend of the Devil - Ly - D Alto Voice"}

%}
