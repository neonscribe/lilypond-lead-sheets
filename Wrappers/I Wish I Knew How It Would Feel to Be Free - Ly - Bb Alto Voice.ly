%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Nina Simone Key"
whatKey = bf,
whatClef = "treble"

\include "../Core/I Wish I Knew How It Would Feel to Be Free - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Wish I Knew How It Would Feel to Be Free - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/I Wish I Knew How It Would Feel to Be Free - Ly - Bb Alto Voice"}

%}
