%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Baritone Voice Key"
whatKey = c
whatClef = "treble_8"

objectGenderMale = ##f

\include "../Core/Hallelujah I Love Him (Her) So - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Hallelujah I Love Him So - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Baritone Voice/Hallelujah I Love Him (Her) So - Ly - C Baritone Voice"}

%}
