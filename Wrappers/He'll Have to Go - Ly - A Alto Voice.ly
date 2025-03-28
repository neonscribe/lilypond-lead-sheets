%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Anne Murray Key"
whatKey = a,
whatClef = "treble_8"

objectGenderMale = ##t

\include "../Core/He'll Have to Go - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{He'll Have to Go - A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/He'll Have to Go - Ly - A Alto Voice"}

%}
