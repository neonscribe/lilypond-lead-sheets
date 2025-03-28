%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Dakota Staton Key"
whatKey = bf,
whatClef = "treble_8"

objectGenderMale = ##t

\include "../Core/She's Funny That Way - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{He's Funny That Way - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/She's Funny That Way - Ly - Bb Alto Voice"}

%}
