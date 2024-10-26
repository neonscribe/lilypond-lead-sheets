%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/My Heart Stood Still - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Heart Stood Still - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/My Heart Stood Still - Ly - F Standard"}

%}
