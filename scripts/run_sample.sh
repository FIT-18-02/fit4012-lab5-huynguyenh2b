#!/usr/bin/env bash
set -euo pipefail

g++ -std=c++17 -Wall -Wextra -pedantic encrypt.cpp -o encrypt
g++ -std=c++17 -Wall -Wextra -pedantic decrypt.cpp -o decrypt

PLAINTEXT="hello FIT4012 AES"

{
  echo "[INFO] Plaintext: ${PLAINTEXT}"
  echo "[INFO] Running ./encrypt"
  printf "%s\n" "$PLAINTEXT" | ./encrypt
  echo
  echo "[INFO] Running ./decrypt"
  ./decrypt
} | tee logs/sample-run.log
