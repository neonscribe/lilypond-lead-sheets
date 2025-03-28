%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Alison Moyet, Gwen Stefani, Rossana Casale Key"
whatKey = f
whatClef = "treble_8"

objectGenderMale = ##t

\include "../Core/Almost Blue - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Almost Blue - Fm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Almost Blue - Ly - Fm Alto Voice"}

%}
