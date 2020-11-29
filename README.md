Minecraft Spigot Container
==========================

![Testing](https://github.com/kamarad-coal/minecraft-spigot/workflows/Testing/badge.svg?branch=master)
![Docker Pulls](https://img.shields.io/docker/pulls/kamaradcoal/minecraft-spigot)


Kamarad Coal is using the Minecraft Spigot container to deploy servers on Kubernetes infrastructure in order to provide easy server spin-ups.

## Supported Minecraft versions

#### Minecraft 1.16 - 1.x

- `1.16.1`
- `1.16.2`
- `1.16.3`
- `1.16.4`

#### Minecraft 1.15 - 1.x

- `1.15`,
- `1.15.1`
- `1.15.2`

## Versioning

Spigot builds support multiple Minecraft versions for each Github tag. The format for container tags is the following:

```
kamaradcoal/minecraft-spigot:mc[minecraft_version]-[repo_tag]
```

For example, this is going to be the latest tag for Minecraft `1.16.4`:

```
kamaradcoal/minecraft-spigot:mc1.16.4-latest
```

For version-specific tags, you might use the following image and tag, `1.0.0` being the repo tag:

```
kamaradcoal/minecraft-spigot:mc1.16.4-1.0.0
```

## Kubernetes Integration

Coming soon.
