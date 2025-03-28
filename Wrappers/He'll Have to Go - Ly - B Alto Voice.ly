%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Kitty Wells Key"
whatKey = b,
whatClef = "treble_8"

objectGenderMale = ##t

\include "../Core/He'll Have to Go - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{He'll Have to Go - B}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/He'll Have to Go - Ly - B Alto Voice"}

%}
