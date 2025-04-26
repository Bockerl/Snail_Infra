# Es,Logstash,Kafka 설정 가이드

## 필수 조건

- Docker
- Docker Compose
- Git

## 설치 및 실행 방법

# 1. 저장소 클론

```bash
git clone clone https://github.com/Bockerl/Snail_Infra.git
# git pull한 루트 디렉토리로 이동(docker-compose.yml이 존재하는)
cd ../Snail_Infra
```

# 2. 실행


```bash

# Docker Desktop 실행 확인 후
docker-compose up -d

```



# 3. 설치 확인

```bash
# Elasticsearch 확인
curl 'http://localhost:9200/_cat/indices?v'

# LogStash 확인
docker logs logstash

# Kafka 확인
docker logs kafka
```

# 4. 접속 주소

Elasticsearch: http://localhost:9200
Kibana: http://localhost:5601
