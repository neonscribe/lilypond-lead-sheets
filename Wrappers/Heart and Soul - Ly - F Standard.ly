%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Heart and Soul - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Heart and Soul - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Heart and Soul - Ly - F Standard"}

%}
