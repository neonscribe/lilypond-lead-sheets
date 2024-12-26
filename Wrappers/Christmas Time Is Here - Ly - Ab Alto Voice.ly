%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Holly Cole, Stacey Kent Key"
whatKey = af,
whatClef = "treble_8"

\include "../Core/Christmas Time Is Here - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Christmas Time Is Here - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Christmas Time Is Here - Ly - Ab Alto Voice"}

%}
