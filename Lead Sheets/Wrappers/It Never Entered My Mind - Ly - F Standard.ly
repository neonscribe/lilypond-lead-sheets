%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/It Never Entered My Mind - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It Never Entered My Mind - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/It Never Entered My Mind - Ly - F Standard"}

%}
