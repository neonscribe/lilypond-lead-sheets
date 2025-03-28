%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/If I Could Be With You - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{If I Could Be With You - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/If I Could Be With You - Ly - Eb Standard"}

%}
