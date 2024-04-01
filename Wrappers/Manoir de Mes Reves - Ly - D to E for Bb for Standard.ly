%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Manoir de Mes Reves - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Manoir de Mes Rêves (Django's Castle) - D to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Manoir de Mes Reves - Ly - D to E for Bb for Standard"}

%}
