%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Mary Ford (with Les Paul) Key"
whatKey = af,
whatClef = "treble_8"

objectGenderMale = ##t

\include "../Core/He'll Have to Go - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{He'll Have to Go - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/He'll Have to Go - Ly - Ab Alto Voice"}

%}
