FROM emby-base:latest

CMD MONO_THREADS_PER_CPU="250" MONO_GC_PARAMS="nursery-size=256m" /usr/bin/mono-sgen --optimize=all /usr/lib/emby-server/bin/MediaBrowser.Server.Mono.exe -programdata /var/lib/emby-server -ffmpeg /usr/bin/ffmpeg -ffprobe /usr/bin/ffprobe