# Screenshot from RTSP
Windows Batch File for RTSP Snapshot


## Documentation

1. Need to run on C:/ drive only

2. Snapshot 1 time each bat file script is running.
## Run Locally

1. Clone the project

```bash
  git clone https://github.com/RaisHelmy/Screenshot-from-RTSP
```

2. Go to the project directory

```bash
  cd Screenshot-from-RTSP
```

3. Install dependencies

### Windows:
```bash
  choco install ffmpeg
```
### Windows:
```bash
  apt install ffmpeg
```

4. Start running snapshot

```bash
  snapshot.bat [rtsp link here] [snapshot folder]
```
Example,
```bash
  snapshot.bat rtsp://admin:password@localhost/Streaming/Channels/101 camera01
```
