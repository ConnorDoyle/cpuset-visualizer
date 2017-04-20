# cpuset-visualizer

Serves SVG output over HTTP of lstopo as viewed from inside a container.

## Build

```sh
$ make
```

## Run

The container entrypoint takes a single optional parameter to override
the port to bind. If left unspecified, the default is `80`.

```
$ docker run -it --cpuset-cpus=0,2 --net=host cpuset-visualizer [$PORT]
```

## View

Open [http://localhost:80](http://localhost:80) in your browser.
