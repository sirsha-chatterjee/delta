VER=$1
EMR_IP=$2
echo "${VER}"
build/sbt compile
build/sbt package
scp .//storage/target/delta-storage-2.4.${VER}-SIRSHA-SNAPSHOT.jar ${EMR_IP}:/tmp
scp .//storage-s3-dynamodb/target/delta-storage-s3-dynamodb-2.4.${VER}-SIRSHA-SNAPSHOT.jar ${EMR_IP}:/tmp
scp ./core/target/scala-2.12/delta-core_2.12-2.4.${VER}-SIRSHA-SNAPSHOT.jar ${EMR_IP}:/tmp