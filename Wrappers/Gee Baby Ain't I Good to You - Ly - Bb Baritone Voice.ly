%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Baritone Voice Key"
whatKey = bf,
whatClef = "treble_8"

objectGenderMale = ##f

\include "../Core/Gee Baby Ain't I Good to You - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Gee Baby, Ain't I Good to You - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Baritone Voice/Gee Baby Ain't I Good to You - Ly - Bb Baritone Voice"}

%}
