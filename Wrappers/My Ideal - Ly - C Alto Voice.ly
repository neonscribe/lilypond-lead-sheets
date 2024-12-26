%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Dinah Washington Key"
whatKey = c
whatClef = "treble_8"

objectGenderMale = ##t

\include "../Core/My Ideal - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Ideal - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/My Ideal - Ly - C Alto Voice"}

%}
