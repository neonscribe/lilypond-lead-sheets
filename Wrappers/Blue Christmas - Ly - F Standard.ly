%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Harry Connick Key"
whatKey = f
whatClef = "treble"

\include "../Core/Blue Christmas - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blue Christmas - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Blue Christmas - Ly - F Standard"}

%}
