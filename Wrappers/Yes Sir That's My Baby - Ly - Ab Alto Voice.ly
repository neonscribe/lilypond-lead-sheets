%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Etta Jones Key"
whatKey = af,
whatClef = "treble_8"

\include "../Core/Yes Sir That's My Baby - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Yes Sir, That's My Baby - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Yes Sir That's My Baby - Ly - Ab Alto Voice"}

%}
