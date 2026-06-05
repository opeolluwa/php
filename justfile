default: start

# Start MySQL container and Yii dev server
start:
    docker compose -f docker-compose.mysql.yml up -d
    php yii serve --port=8000

# Start MySQL container only
db-start:
    docker compose -f docker-compose.mysql.yml up -d

# Stop MySQL container
db-stop:
    docker compose -f docker-compose.mysql.yml down

# Stop everything (container + kill yii server)
stop:
    docker compose -f docker-compose.mysql.yml down
    -pkill -f "yii serve"
