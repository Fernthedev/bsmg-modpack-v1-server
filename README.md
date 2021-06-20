# BSMG Modpack v1

This is the server for the modpack at [CurseForge](https://www.curseforge.com/minecraft/modpacks/bsmg-modded-v1). Client downloads will be over there and in `Releases`.

## We accept PRs!

You can PR mods here (though if they require clients to also have the mods it muust be mentioned). Configuration suggestions and issues can also be posted here.

# To run server

Clone this repository and make sure you `cd` into the folder.

## Linux

### Requisites:

- Java 8
- Bash (WSL or Linux)

### Process

Run `./ServerStart.sh`

## Docker

### Requisites:

- Docker
- Docker Compose

On Windows, you might need to make `ServerStart.sh`, `FTBInstall.sh` and `settings.sh` use `LF` line endings.

### Process

Run:
`docker-compose -p bsmg-modpack-v1 up -d`

This will start an instance of the server using docker and will run in the background.
