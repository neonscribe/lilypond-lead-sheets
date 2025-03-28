%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Peggy Lee, Ella Fitzgerald Key"
whatKey = df
whatClef = "treble_8"

objectGenderMale = ##t

\include "../Core/Hallelujah I Love Him (Her) So - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Hallelujah I Love Him So - Db}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Hallelujah I Love Him (Her) So - Ly - Db Alto Voice"}

%}
