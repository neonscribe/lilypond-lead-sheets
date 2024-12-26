%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Galen Ayers (with Siskin) Key"
whatKey = a,
whatClef = "treble_8"

\include "../Core/It's Different for Girls - Ly Core - Fs.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It's Different for Girls - A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/It's Different for Girls - Ly - A Alto Voice"}

%}
