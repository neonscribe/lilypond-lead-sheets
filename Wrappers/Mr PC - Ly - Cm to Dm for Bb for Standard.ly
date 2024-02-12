%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Mr PC - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Mr. P.C. - Cm to Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Mr PC - Ly - Cm to Dm for Bb for Standard"}

%}
