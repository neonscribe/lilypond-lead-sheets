%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = b,
whatClef = "treble"

\include "../Core/Manoir de Mes Reves - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Manoir de Mes Rêves (Django's Castle) - D to B}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Manoir de Mes Reves - Ly - D to B for Eb for Standard"}

%}
