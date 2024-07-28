%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/I've Got You Under My Skin - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I've Got You Under My Skin - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/I've Got You Under My Skin - Ly - Eb Bass for Standard"}

%}
