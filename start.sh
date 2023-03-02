#!/bin/bash

set -e

docker compose down

docker compose up --build -d

docker compose logs --tail 64 -tf
