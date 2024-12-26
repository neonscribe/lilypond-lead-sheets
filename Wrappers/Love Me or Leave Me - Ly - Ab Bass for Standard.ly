%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = af,
whatClef = "bass"

\include "../Core/Love Me or Leave Me - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Love Me or Leave Me - Ab Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Love Me or Leave Me - Ly - Ab Bass for Standard"}

%}
