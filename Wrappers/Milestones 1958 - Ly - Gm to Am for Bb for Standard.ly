%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Milestones 1958 - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Milestones (1958) - Gm to Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Milestones 1958 - Ly - Gm to Am for Bb for Standard"}

%}
