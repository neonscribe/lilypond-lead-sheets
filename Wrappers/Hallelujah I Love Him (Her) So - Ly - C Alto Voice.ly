%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Monica Zetterlund, Debby Moore, Brenda Lee Key"
whatKey = c
whatClef = "treble_8"

objectGenderMale = ##t

\include "../Core/Hallelujah I Love Him (Her) So - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Hallelujah I Love Him So - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Hallelujah I Love Him (Her) So - Ly - C Alto Voice"}

%}
