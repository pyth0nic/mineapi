# MC Bot
This project allows you to run a swarm of bots from through REST API! This is can easily be coupled with a decision engine, task scheduler or run manually. 

## Running
* Install Node.js 22 or later.
* ```npm ci```
* Start minecraft and run ```/publish 1337```
* Now start the API ```npm start```
* Use the postman collection to initialise a bot, now you can run commands like fight an entity or collect resources.

### Internal package registries
For a registry that is TLS-inspected with an internal CA, preserve TLS verification and provide the CA certificate as a BuildKit secret:

```sh
docker build --secret id=npm_ca,src=/path/to/registry-ca.pem -t mineapi .
```

## Integration tests
The integration suite exercises login, movement, crafting, collection, combat, and schematic building against a local Java 1.17.1 server.

```sh
docker compose -f test/docker-compose.integration.yml up -d --wait
npm run test:integration
docker compose -f test/docker-compose.integration.yml down -v
```

## Example before a bunch of bug fixes
![Bot example](https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExanpsdW1nOTI5YTNqZnN6aDI5NzM5aTc3ZmN4N3lmYmxxZW5rNHI0cSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/aaqEg3r8va8wCGZORL/giphy-downsized-large.gif)
