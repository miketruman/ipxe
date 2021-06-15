docker build -t ipxe .
rm bin/ -Rf
container_id=$(docker create ipxe)
docker cp $container_id:/ipxe/src/bin bin
docker rm $container_id
