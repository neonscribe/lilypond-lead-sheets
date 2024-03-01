%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = af,
whatClef = "bass"

\include "../Core/Serenade to a Cuckoo - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Serenade to a Cuckoo - A♭ Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Serenade to a Cuckoo - Ly - Ab Bass for Standard"}

%}
