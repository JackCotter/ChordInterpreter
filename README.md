Installation:

1. Install Docker Desktop: https://www.docker.com/products/docker-desktop/
2. cd into /proof_of_concept directory
3. Run
   ` docker build -t chord-rec .`
   To build container. Installation will take some time.
4. Record you playing some chords to your computer. Make sure recording is in .mp3 format
5. Run
   `docker run -v <path\to\local\recording.mp3>:/usr/a.mp3 chord-rec`
   replace <path\to\local\recording.mp3> with path to .mp3 file on local device.
