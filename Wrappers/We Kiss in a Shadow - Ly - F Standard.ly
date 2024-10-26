%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/We Kiss in a Shadow - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{We Kiss in a Shadow - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/We Kiss in a Shadow - Ly - F Standard"}

%}
