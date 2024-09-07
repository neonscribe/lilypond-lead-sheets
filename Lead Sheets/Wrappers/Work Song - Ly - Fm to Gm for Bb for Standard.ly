%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Work Song - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Work Song - Fm to Gm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Work Song - Ly - Fm to Gm for Bb for Standard"}

%}
