%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/If I Could Be With You - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{If I Could Be With You - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/If I Could Be With You - Ly - Eb to C for Eb for Standard"}

%}
