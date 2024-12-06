%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Vince Guaraldi, Diana Krall Key"
whatKey = f
whatClef = "treble"

\include "../Core/Christmas Time Is Here - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Christmas Time Is Here - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Christmas Time Is Here - Ly - F Standard"}

%}
