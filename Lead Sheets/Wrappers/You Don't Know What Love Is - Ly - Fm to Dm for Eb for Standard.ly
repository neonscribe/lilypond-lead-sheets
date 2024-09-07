%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/You Don't Know What Love Is - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{You Don't Know What Love Is - Fm to Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/You Don't Know What Love Is - Ly - Fm to Dm for Eb for Standard"}

%}
