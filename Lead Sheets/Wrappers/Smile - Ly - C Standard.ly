%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Django Fakebook Key"
whatKey = c'
whatClef = "treble"

useDFBChords = ##t

\include "../Core/Smile - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Smile - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Smile - Ly - C Standard"}

%}
