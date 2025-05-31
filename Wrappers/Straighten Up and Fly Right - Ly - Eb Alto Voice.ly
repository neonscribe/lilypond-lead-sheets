%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Andrews Sisters Key"
whatKey = ef
whatClef = "treble_8"

\include "../Core/Straighten Up and Fly Right - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Straighten Up and Fly Right - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Straighten Up and Fly Right - Ly - Eb Alto Voice"}

%}
