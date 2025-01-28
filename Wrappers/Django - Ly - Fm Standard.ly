%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
bassKey = f
whatClef = "treble"

\include "../Core/Django - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Django - Fm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Django - Ly - Fm Standard"}

%}
