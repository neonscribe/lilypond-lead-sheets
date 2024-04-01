%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = d,
whatClef = "bass"

\include "../Core/Manoir de Mes Reves - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Manoir de Mes Rêves (Django's Castle) - D Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Manoir de Mes Reves - Ly - D Bass for Standard"}

%}
