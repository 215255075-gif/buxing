#!/bin/sh
# 双击本文件：在本地起一个小服务器，再用浏览器打开。
# 这样地址固定为 http://127.0.0.1:8787/index.html，设置和 API key 才能被记住。

cd "$(dirname "$0")" || exit 1
PORT=8787

if ! /usr/bin/curl -s -m 1 "http://127.0.0.1:$PORT/index.html" >/dev/null 2>&1; then
  /usr/bin/nohup /usr/bin/python3 -m http.server "$PORT" --bind 127.0.0.1 >/dev/null 2>&1 &
  sleep 0.8
fi

/usr/bin/open "http://127.0.0.1:$PORT/index.html"
exit 0
