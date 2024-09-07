%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Alto Voice Key"
whatKey = af,
whatClef = "treble"

\include "../Core/Someone to Watch Over Me - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Someone to Watch Over Me - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Someone to Watch Over Me - Ly - Ab Alto Voice"}

%}
