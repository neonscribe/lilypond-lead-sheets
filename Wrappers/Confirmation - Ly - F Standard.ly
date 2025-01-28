%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Confirmation - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Confirmation - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Confirmation - Ly - F Standard"}

%}
