%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "June Christy, Margaret Whiting Key"
whatKey = df
whatClef = "treble"

\include "../Core/We Kiss in a Shadow - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{We Kiss in a Shadow - Db}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/We Kiss in a Shadow - Ly - Db Alto Voice"}

%}
