%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Take Five - Ly Core - Ebm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Take Five - Ebm to Fm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Take Five - Ly - Ebm to Fm for Bb for Standard"}

%}
