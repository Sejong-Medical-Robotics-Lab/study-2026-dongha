#!/bin/bash

# 사용법: ./log.sh -> 오늘 날짜의 학습일지 생성 후 편집기 열기

F=logs/$(date +%F).md

mkdir -p logs

if [ ! -f "$F" ]; then
    printf '# 학습일지 - %s\n\n## 오늘 배운 것 (3줄 요약)\n-\n\n## 직접 해본 것 / 성공한 것\n-\n\n## 막힌 것 / 이해가 안 되는 것 (다음 Q&A 때 질문할 목록)\n-\n\n## 한 줄 소감\n-\n' "$(date +%F)" > "$F"
fi

nano "$F"
