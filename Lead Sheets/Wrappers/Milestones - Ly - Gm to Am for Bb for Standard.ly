%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Milestones - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Milestones - Gm to Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Milestones - Ly - Gm to Am for Bb for Standard"}

%}
