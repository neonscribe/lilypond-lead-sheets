%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald, Sarah Vaughan, Blossom Dearie, Nancy Wilson Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/Someone to Watch Over Me - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Someone to Watch Over Me - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Someone to Watch Over Me - Ly - G Alto Voice"}

%}
