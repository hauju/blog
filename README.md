# Readme

Host local

```bash
zola serve
```

To update the submodule, use the following command:

```bash
git submodule update --remote --merge
```

```bash
zola build -u http://localhost
```

```bash
docker build -t dcr.oxidt.com/oxidt-blog .
docker buildx build --platform linux/amd64,linux/arm64 -t dcr.oxidt.com/oxidt-blog .
```

```bash
docker run --rm -p 80:80 dcr.oxidt.com/oxidt-blog
```
