%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Margaret Whiting, Helen Forrest Key"
whatKey = bf,
whatClef = "treble_8"

objectGenderMale = ##t

\include "../Core/My Ideal - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Ideal - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/My Ideal - Ly - Bb Alto Voice"}

%}
