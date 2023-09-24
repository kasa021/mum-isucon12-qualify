read -p "並列度を入力: " concurrency
read -p "リクエスト数を入力: " total_requests
read -p "ベンチ対象のホストを入力: " host
ab -c $concurrency -n $total_requests $host
