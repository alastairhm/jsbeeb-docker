# JSBeeb running in Docker

[jsbeeb](https://github.com/mattgodbolt/jsbeeb) using Lighttpd running on an Alpine Docker image.

Build using;

```bash
docker build -t  alastairhm/jsbeeb .
```

Run using;

```bash
docker run --name "my-jsbeeb" -p 8000:80 alastairhm/jsbeeb
```

Then browse to [Localhost:8000](http://localhost:8000/)

To run with local directory mounted as `discs`

```bash
docker run --name "my-jsbeeb" -p 8000:80 -v $(pwd):/var/www/discs alastairhm/jsbeeb
```

Then browse to [Localhost:8000?disc=test.ssd&autoboot](http://localhost:8000/?disc1=test.ssd&autoboot) to run `test.ssd` from local directory.
