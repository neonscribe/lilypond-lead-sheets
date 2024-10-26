%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Billie Holiday, Karrin Allyson Key"
whatKey = df
whatClef = "treble"

\include "../Core/Good Morning Heartache - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Good Morning Heartache - Db}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Good Morning Heartache - Ly - Db Alto Voice"}

%}
