#!/bin/bash
echo "Applying Clustering Settings:\n"
docker exec -ti rabbitmq2 bash -c "rabbitmqctl stop_app && rabbitmqctl join_cluster rabbit@rabbitmq1 && rabbitmqctl start_app > /dev/null"
docker exec -ti rabbitmq3 bash -c "rabbitmqctl stop_app && rabbitmqctl join_cluster rabbit@rabbitmq1 && rabbitmqctl start_app > /dev/null"
docker exec -ti rabbitmq4 bash -c "rabbitmqctl stop_app && rabbitmqctl join_cluster rabbit@rabbitmq1 && rabbitmqctl start_app > /dev/null"
docker exec -ti rabbitmq1 bash -c "rabbitmqctl set_policy ha-all '' '{\"ha-mode\":\"all\", \"ha-sync-mode\":\"automatic\"}'"