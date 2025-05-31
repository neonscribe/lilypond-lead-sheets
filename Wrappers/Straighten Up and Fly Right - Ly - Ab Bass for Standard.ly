%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = af,
whatClef = "bass"

\include "../Core/Straighten Up and Fly Right - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Straighten Up and Fly Right - Ab Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Straighten Up and Fly Right - Ly - Ab Bass for Standard"}

%}
