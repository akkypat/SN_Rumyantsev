#!/bin/bash

SOURCE_DIR="/Users/Иван/Desktop/Мое/сем нас/homework_bash/test"
IMAGE_DIR="$SOURCE_DIR/Images"
DOCUMENT_DIR="$SOURCE_DIR/Documents"
LOG_FILE="$SOURCE_DIR/sort_files.log"

mkdir -p "$IMAGE_DIR"
mkdir -p "$DOCUMENT_DIR"

log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

for img in "$SOURCE_DIR"/*.{jpg,png,gif}; do
    if [ -e "$img" ]; then
        mv "$img" "$IMAGE_DIR/"
        log "Файл изображения: $img"
    fi
done

for doc in "$SOURCE_DIR"/*.{txt,pdf,docx}; do
    if [ -e "$doc" ]; then
        mv "$doc" "$DOCUMENT_DIR/"
        log "Файл документа: $doc"
    fi
done

log "Сортировка завершена."
