%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = f'
whatClef = "treble"

\include "../Core/Love Me or Leave Me - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Love Me or Leave Me - Ab to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Love Me or Leave Me - Ly - Ab to F for Eb for Standard"}

%}
