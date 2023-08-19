# NMP Evaluation Method

This repository is associated with the publication "A DAW-based approach to immersive audio system evaluation in Network Music Performance contexts". This paper was presented at the 2023 AES International Conference on Spatial and Immersive Audio.

If you have any queries or suggestions please do not hesitate to contact me at patrick.cairns@york.ac.uk

# Summary

This repo contains the required resource to conduct immersive audio rendering system evaluations in Network Music Performance (NMP) contexts.

The presented workflow uses:

- a DAW (Reaper) to host audio rendering processes and record audio for synchrony analysis.
- an NMP application (Jacktrip) to stream audio between endpoints.
- A MATLAB control application, which controls test sequences across endpoints, and provides participant user interface (for input of personal data and Quality of Experience questionnaire item rating).

An example has been prepared such that modification and repurposing of the workflow for further immersive audio rendering system evaluations requires only editing of:

- Worksheet files (.xlsx)
- Batch files (.bat)
- DAW (Reaper) sessions (.rpp)

Setup, usage, and modification guidance notes are provided.

The example considers:

- Windows OS
- LAN deployment
- 2 performer endpoints
- 1 optional researcher 'control room' endpoint

# Planned Updates
- Video guides.

# Acknowledgement
This repository uses the the Matlab OSC send function provided by Mark Marijnissen.

The following copyright notice is attached to the file oscsend.m

Copyright (c) 2011, Mark Marijnissen
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this
  list of conditions and the following disclaimer.

* Redistributions in binary form must reproduce the above copyright notice,
  this list of conditions and the following disclaimer in the documentation
  and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
