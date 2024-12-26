%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = af
whatClef = "treble"

\include "../Core/Love Me or Leave Me - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Love Me or Leave Me - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Love Me or Leave Me - Ly - Ab Standard"}

%}
