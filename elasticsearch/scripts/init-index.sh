#!/bin/sh

echo "⏳ Waiting for Elasticsearch to be available..."
until curl -s "http://elasticsearch:9200" > /dev/null; do
    echo 'Elasticsearch not ready yet...'
    sleep 3
done

echo "✅ Elasticsearch is up. Creating indices..."

# 기존 인덱스 삭제
echo "Deleting existing indices..."
curl -X DELETE "http://elasticsearch:9200/member_log" || true

# 각 인덱스 생성
echo "Creating member_log index..."
curl -X PUT "http://elasticsearch:9200/member_log" -H 'Content-Type: application/json' -d "@/usr/share/elasticsearch/scripts/indices/member_log.json"

echo "All indices created successfully!"

# 생성된 인덱스 확인
echo "Created indices:"
curl 'http://elasticsearch:9200/_cat/indices?v'