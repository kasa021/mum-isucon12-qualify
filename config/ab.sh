read -p "並列度を入力: " concurrency
read -p "リクエスト数を入力: " total_requests
ab -c $concurrency -n $total_requests https://isucon.t.isucon.dev/
