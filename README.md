To enable Cluster mode in RabbitMQ you have to run the start_all.sh file in the terminal.

sh start_all.sh

To access the RabbitMQ admin panel:

https://localhost:10001 to access rabbitmq1 (master node)
https://localhost:10002 to access rabbitmq2 (node)
https://localhost:10003 to access rabbitmq3 (node)
https://localhost:10004 to access rabbitmq4 (node)

To connect using the AMQP protocol to enter the address:

ampq://rabbitmq-endpoint:5672 or ampq://localhost:5672

HAProxy will load balance the server and check the health of the nodes.

To know the status of each node, just access:

http://localhost:10000 to access the HAProxy status page.