%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = af,
whatClef = "bass"

\include "../Core/Tea for Two - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Tea for Two - A♭ Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Tea for Two - Ly - Ab Bass for Standard"}

%}
