mysql -h 127.0.0.1 -u pyadukhov.tim -ppyaduhov_pass \
  --default-character-set=utf8mb4 --batch users_db \
  -e "SELECT * FROM users;"
