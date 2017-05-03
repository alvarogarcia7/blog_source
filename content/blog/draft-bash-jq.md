---
published: false
categories:
  - draft
  - docker
  - jq
  - tool
  - snippet
  - client
  - csv
  - export
  - debian
  - bash
---

2017-05-02 19:38:28 AGB

WARNING: in docker, using:

docker run -v $(pwd):/app -it debian /bin/bash

function extract_status {

  cat $1 | jq '[.hits.hits[]._source | {"f1": .f1, "f2": .f2, f3}]' > selected_fields.jq

  cat selected_fields.jq | sed 's/\s*\("f3"\).*<name>\([^<]\+\)<\/name>.*/\1: "\2"/' > result.json

  echo '"F1","F2","F3"' > result.csv
  cat result.json|jq -r '.[]|[.f1, .f2, .f3]|@csv' >> result.csv
}

cd /app
extract_status $LOG_FILE

2017-05-03 12:03:27 AGB

para el blog - TODO

  * separar el elasticsearch del procesado
  * explicar bien qué son los procesos
  * explicar el golden master
  * empezar desde el código inicial y refactorizar
  * nota sobre el sed en mac
  * mktemp
