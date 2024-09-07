%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/So Nice - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Samba de Verão (So Nice, Summer Samba) - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/So Nice - Ly - F Bass for Standard"}

%}
