%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Sarah Vaughan Key"
whatKey = af,
whatClef = "treble"

\include "../Core/The Touch of Your Lips - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Touch of Your Lips - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/The Touch of Your Lips - Ly - Ab Alto Voice"}

%}
