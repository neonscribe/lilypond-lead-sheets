%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Gisèle MacKenzie, Sandra Reemer, Kathryn Williams, Kina Grannis Key"
whatKey = c
whatClef = "treble_8"

objectGenderMale = ##t

\include "../Core/Beyond the Sea - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Beyond the Sea - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Beyond the Sea - Ly - C Alto Voice"}

%}
