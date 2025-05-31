%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "LaVergne Smith, Carmen McRae, Diana Krall, Dianne Reeves Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/Straighten Up and Fly Right - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Straighten Up and Fly Right - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Straighten Up and Fly Right - Ly - C Alto Voice"}

%}
