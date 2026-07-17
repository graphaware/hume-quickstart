# Spine Database

## 1. Download the Spine database backup

Either run the provided script from the repo root:

```bash
./download-spine-db
```

This downloads the backup into `data/neo4j/import/`.

Or download it manually and place it in the right folder (`data/neo4j/import/`):

```
https://s3.eu-west-1.amazonaws.com/spine.dev.graphaware.io/spine-neo4j-backups/spine-latest.backup
```

## 2. Install it in the Neo4j database

Run the following Cypher against the Neo4j instance to create the `spine` database from the backup:

```cypher
CREATE DATABASE spine OPTIONS {seedURI: 'file:///import/spine-latest.backup'} WAIT
```

## 3. Create roles and privileges

In the Neo4j Browser (available at [localhost:17474](http://localhost:17474), log in with `neo4j` / `hellopassword`), switch to the `spine` database and run the following to set up the roles and their privileges:

```cypher
CREATE ROLE `spine_neo4j_sa_rw` IF NOT EXISTS;
GRANT ALL DATABASE PRIVILEGES ON DATABASE `spine` TO `spine_neo4j_sa_rw`;
GRANT ALL GRAPH PRIVILEGES ON GRAPH `spine` TO `spine_neo4j_sa_rw`;
//--------------------------------------
CREATE ROLE `spine_analyst` IF NOT EXISTS;
GRANT ACCESS ON DATABASE `spine` TO `spine_analyst`;

GRANT MATCH {*} ON GRAPH `spine` NODE * TO `spine_analyst`;
GRANT MATCH {*} ON GRAPH `spine` RELATIONSHIP * TO `spine_analyst`;
GRANT SHOW INDEX ON DATABASE `spine` TO `spine_analyst`;
GRANT SHOW CONSTRAINT ON DATABASE `spine` TO `spine_analyst`;

DENY READ { birthDate } ON GRAPH `spine` NODES Person TO `spine_analyst`;
//--------------------------------------
CREATE ROLE `spine_officer` IF NOT EXISTS;
GRANT ACCESS ON DATABASE `spine` TO `spine_officer`;

GRANT MATCH {*} ON GRAPH `spine` NODES * TO `spine_officer`;
GRANT MATCH {*} ON GRAPH `spine` RELATIONSHIPS * TO `spine_officer`;
GRANT SHOW INDEX ON DATABASE `spine` TO `spine_officer`;
GRANT SHOW CONSTRAINT ON DATABASE `spine` TO `spine_officer`;
```

## 4. Demo playbook

When following the demo playbook, the CCR file is located in `data/assets/spine/ccr`.
