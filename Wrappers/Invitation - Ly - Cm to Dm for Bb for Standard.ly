%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Invitation - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Invitation - Cm to Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Invitation - Ly - Cm to Dm for Bb for Standard"}

%}
