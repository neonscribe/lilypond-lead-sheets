%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/You Don't Know What Love Is - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{You Don't Know What Love Is - Fm to Gm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/You Don't Know What Love Is - Ly - Fm to Gm for Bb for Standard"}

%}
