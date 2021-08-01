Minecraft Spigot Container
==========================

![Testing](https://github.com/kamarad-coal/minecraft-spigot/workflows/Testing/badge.svg?branch=master)
![Docker Pulls](https://img.shields.io/docker/pulls/kamaradcoal/minecraft-spigot)

Kamarad Coal is using the Minecraft Spigot container to deploy servers on Kubernetes infrastructure in order to provide easy server spin-ups.

## 🤝 Supporting

If you are using one or more Renoki Co. open-source packages in your production apps, in presentation demos, hobby projects, school projects or so, spread some kind words about our work or sponsor our work via Patreon. 📦

You will sometimes get exclusive content on tips about Laravel, AWS or Kubernetes on Patreon and some early-access to projects or packages.

[<img src="https://c5.patreon.com/external/logo/become_a_patron_button.png" height="41" width="175" />](https://www.patreon.com/bePatron?u=10965171)

## Supported Minecraft versions

Kamarad Coal tests & builds only the latest patch versions for each minor versions. However, you might find images for non-latest-patches, because at some point that version was the latest patch.

The following Minecraft versions are deployed on an day-to-day basis:

- `1.16.5`
- `1.16.4`
- `1.15.2`
- `1.14.4`
- `1.13.2`
- `1.12.2`
- `1.11.2`
- `1.10.2`
- `1.9.4`
- `1.8.8`

## Versioning

Spigot builds support multiple Minecraft versions for each Github tag. The format for container tags is the following:

```
kamaradcoal/minecraft-spigot:[minecraft_version]-[repo_tag]
```

For example, this is going to be the latest tag for Minecraft `1.16.5`:

```
kamaradcoal/minecraft-spigot:1.16.5-latest
```

### Version Specific Tags

For version-specific tags, you might use the following image and tag, `1.0.0` being the repo tag:

```
kamaradcoal/minecraft-spigot:1.16.5-1.0.0
```

### Minecraft Majors and Minor versions

You can also specify major repo versions, where `1.0` means `1.0.x`:

```
kamaradcoal/minecraft-spigot:1.16.5-1.0
```

You can also specify major.minor repo versions, where `1` means `1.x` (all 1.x versions):

```
kamaradcoal/minecraft-spigot:1.16.5-1
```

### Latest Tags

For latest tags, use `latest` instead any other version:

```
kamaradcoal/minecraft-spigot:1.16.5-latest
```

## Kubernetes Integration

Coming soon.
