docker build -t tshark-image .
docker run --rm -v $(pwd):/data tshark-image -r /data/level02.pcap -q -z follow,tcp,ascii,0
docker run --rm -v $(pwd):/data tshark-image -r /data/level02.pcap -Y "tcp.len > 0" -T fields -e data | xxd -r -p