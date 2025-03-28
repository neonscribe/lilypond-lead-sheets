%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = af,
whatClef = "bass"

\include "../Core/Don't Worry 'Bout Me - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Don't Worry 'Bout Me - Ab Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Don't Worry 'Bout Me - Ly - Ab Bass for Standard"}

%}
