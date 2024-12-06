%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Little Girl Blue - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Little Girl Blue - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Little Girl Blue - Ly - F Standard"}

%}
