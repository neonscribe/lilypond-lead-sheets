%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Take Five - Ly Core - Ebm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Take Five - Ebm to Cm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Take Five - Ly - Ebm to Cm for Eb for Standard"}

%}
