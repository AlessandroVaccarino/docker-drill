# Apache Drill Docker container

## What is Apache Drill Docker container project?
An Embedded Mode installation of [Apache Drill](https://drill.apache.org/) into a Docker container. Just run and enjoy.

### Run the container 

To run your first Drill container, just type:

`sudo docker run -p 8047:8047 -it -d alessandrov87/apache-drill /etc/bootstrap.sh`

It will download the latest version of Apache Drill available, create a container, start Apache Drill and expose web interface on port 8047.

So, after executed your container, go to `http://localhost:8047/`: you wil reach Apache Drill Web Console.
Here you'll be able to configure you preferred connection to MongoDB, HBase, Hive,... Just configure it under Storage section (`http://localhost:8047/storage`).

To learn how to configure and use Apache Drill, please refer to `https://drill.apache.org/docs/`
