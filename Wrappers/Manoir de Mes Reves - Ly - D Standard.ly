%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Manoir de Mes Reves - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Manoir de Mes Rêves (Django's Castle) - D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Manoir de Mes Reves - Ly - D Standard"}

%}
