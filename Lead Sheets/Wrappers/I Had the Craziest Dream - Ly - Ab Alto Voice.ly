%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Helen Forrest Key"
whatKey = af,
whatClef = "treble"

femaleSinger = ##t

\include "../Core/I Had the Craziest Dream - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Had the Craziest Dream - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/I Had the Craziest Dream - Ly - Ab Alto Voice"}

%}
