 The additional servcer was added to provide a higher avilability and reliabllity of network.
The load balancer introduced serves to distribute load/requests amongst the two servers in the we infrastructure.
The added source code is there to provide backup incase of unplanned downtime.

The load balance uses the Round Robin distribution algorithm. This algorithm ensures that each server receives equal number of request not minding the processing efficiency of the individual servers.

The load balancer enables the Active-Active setup.
The active active setup uses the both servers concurrently while the active parsive setup keeps one server redundant.

A database Primary-Replica (Master -Slave) cluster is a cluster of database having one original and writable copy called the primary. The replicas are read only copies of the primary but are read only. Every operations like update, insert etc, are done in the primary database.

The primary node is the main node of the database and handles the write instructions like insert update delete etc.For realtime computing, the  applicaation is connected to the primary node.

the Replica node is there to maintain a copy of the database and maintain uptodate record of the primary node.
