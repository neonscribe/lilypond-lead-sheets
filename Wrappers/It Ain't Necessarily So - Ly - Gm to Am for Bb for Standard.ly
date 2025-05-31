%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/It Ain't Necessarily So - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It Ain't Necessarily So - Gm to Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/It Ain't Necessarily So - Ly - Gm to Am for Bb for Standard"}

%}
