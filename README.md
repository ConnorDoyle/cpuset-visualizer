# cpuset-visualizer

Serves SVG output over HTTP of lstopo as viewed from inside a container.

A pre-built image is available from quay.io:
[connordoyle/cpuset-visualizer](https://quay.io/repository/connordoyle/cpuset-visualizer)

## Build

```sh
$ make
```

## Run

The container entrypoint takes a single optional parameter to override
the port to bind. If left unspecified, the default is `80`.

```
$ docker run -it --cpuset-cpus=0,4,2,6 --net=host cpuset-visualizer [$PORT]
```

## View

Open [http://localhost:80](http://localhost:80) in your browser.

### Example output

![Example
output](https://cdn.rawgit.com/ConnorDoyle/cpuset-visualizer/master/example-output.svg)
