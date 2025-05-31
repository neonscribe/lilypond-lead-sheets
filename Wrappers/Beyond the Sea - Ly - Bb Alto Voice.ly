%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Dee Dee Bridgewater Key"
whatKey = bf,
whatClef = "treble_8"

objectGenderMale = ##t

\include "../Core/Beyond the Sea - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Beyond the Sea - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Beyond the Sea - Ly - Bb Alto Voice"}

%}
