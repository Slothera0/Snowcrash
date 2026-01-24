docker build -t tshark-image .
<<<<<<< HEAD
docker run --rm -v $(pwd):/data tshark-image -r /data/level02.pcap -z follow,tcp,ascii,0
=======
docker run --rm -v $(pwd):/data tshark-image -r /data/level02.pcap -q -z follow,tcp,ascii,0
>>>>>>> 8241183a595437b6757125d4c0e300900e6860c0
docker run --rm -v $(pwd):/data tshark-image -r /data/level02.pcap -Y "tcp.len > 0" -T fields -e data | xxd -r -p