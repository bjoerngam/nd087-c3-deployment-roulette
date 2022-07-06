#!/bin/bash

set -e

kubectl apply -f starter/apps/hello-world
kubectl apply -f starter/apps/canary/index_v1_html.yml
kubectl apply -f starter/apps/canary/index_v2_html.yml
kubectl apply -f starter/apps/canary/canary-svc.yml
kubectl apply -f starter/apps/canary/canary-v1.yml
kubectl run debug --rm -i --tty --image nicolaka/netshoot -- /bin/bash

kubectl apply -f starter/apps/blue-green