# Hume Training Playground

Local Docker setup for following GraphAware Hume training materials.

Runs Hume with Neo4j (Enterprise) and Keycloak (SSO) via Docker Compose.

> **Note:** This is a run-and-destroy environment. Named volumes are used for Neo4j, Postgres, and other services — data is lost when containers are removed.

## Prerequisites

- Docker and Docker Compose
- Docker credentials to pull from `docker.graphaware.com`
- A valid Hume licence key

## Setup

**1. Clone the repository**

```bash
git clone git@github.com:graphaware/hume-training-playground.git
cd hume-training-playground
```

**3. Log in to the GraphAware Docker registry**

```bash
docker login docker.graphaware.com
```

**4. Configure your environment**

```bash
cp .env.local .env
```

Open `.env` and set your licence key:

```
HUME_LICENCE_KEY=<your-licence-key>
```

The `.env` file is git-ignored and will not be committed.

## Start

```bash
docker compose up -d
```

## Access

| Service       | URL                          |
|---------------|------------------------------|
| Hume UI       | http://localhost:8081        |
| Neo4j Browser | http://localhost:17474 (bolt: 17687) |
| Keycloak      | http://localhost:8180        |

> Neo4j HTTP and Bolt ports are mapped to `17474` and `17687` (instead of the defaults `7474`/`7687`) to avoid conflicts with any Neo4j instance already running locally.

## Logging in

### Hume UI — http://localhost:8081

Log in with one of the Keycloak users below via the Keycloak SSO login.

### Neo4j Browser — http://localhost:17474

Two options:

- **Native user** — username `neo4j`, password `hellopassword`
- **SSO** — click *Login with Keycloak* and use one of the Keycloak users below

> To use SSO in Neo4j Browser you need to add `127.0.0.1 keycloak` to `/etc/hosts` (see [Neo4j Browser SSO](#neo4j-browser-sso-optional)).

### Keycloak admin console — http://localhost:8180

Log in with `admin` / `hellopassword`.

### Keycloak users

| Username      | Password       | Notes          |
|---------------|----------------|----------------|
| `admin`       | `hellopassword`| Admin role     |
| `analyst`     | `hellopassword`| Analyst role   |
| `investigator`| `hellopassword`| Investigator role |

---

## Stop and destroy

```bash
docker compose down -v --remove-orphans
```

The `-v` flag removes named volumes. All data will be lost.

## Compose profiles

`COMPOSE_FILE` in `.env` controls which services are started:

| Profile | Value |
|---------|-------|
| Core + SSO (default) | `docker-compose.yml:docker-compose-sso.yml` |
| Core + SSO + Alerting | `docker-compose.yml:compose/docker-compose-alerting.yml:docker-compose-sso.yml` |

## Neo4j Browser SSO (optional)

To log into Neo4j Browser using Keycloak SSO, add the following to `/etc/hosts` so the PKCE flow resolves correctly:

```
127.0.0.1 keycloak
```

On **Windows**, edit `C:\Windows\System32\drivers\etc\hosts` as Administrator and add the same line.

This is only needed if you want to authenticate to Neo4j Browser via Keycloak locally.

Happy training!

## Keeping your setup up to date

Avoid modifying the compose files or anything under `config/`. All tuneable settings are exposed through `.env`, which is git-ignored and never overwritten by a pull.

This means you can update to the latest playground version with a plain:

```bash
git pull
```

### Upgrading Hume

To upgrade Hume, update the version in `.env`:

```
HUME_VERSION=<new-version>
```

Then recreate the containers:

```bash
docker compose up -d
```

Check the Hume release notes before upgrading for any breaking changes or required migration steps.

---

Copyright &copy; 2026 GraphAware Limited. All rights reserved.
