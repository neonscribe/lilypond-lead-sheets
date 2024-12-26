%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Kelly Clarkson Key"
whatKey = df
whatClef = "treble_8"

\include "../Core/Blue Christmas - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blue Christmas - Db}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Blue Christmas - Ly - Db Alto Voice"}

%}
