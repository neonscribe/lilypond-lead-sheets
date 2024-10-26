%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Nina Simone Key"
whatKey = a,
whatClef = "treble"

objectGenderMale = ##t

\include "../Core/My Baby Just Cares for Me - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Baby Just Cares for Me - A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/My Baby Just Cares for Me - Ly - A Alto Voice"}

%}
