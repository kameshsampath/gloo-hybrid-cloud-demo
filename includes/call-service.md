
### Cluster1

Retrive the Istio Ingress Gateway url to access the application,

```bash
SVC_GW_CLUSTER1=$(kubectl --context ${CLUSTER1} -n istio-system get svc istio-ingressgateway -o jsonpath='{.status.loadBalancer.ingress[0].*}')
```

#### Call Service

Call the service using the script,

```bash
$TUTORIAL_HOME/bin/call_bgc_service.sh "${CLUSTER1}"
```

#### Poll Service

Poll the service using the script,

```bash
$TUTORIAL_HOME/bin/poll_bgc_service.sh "${CLUSTER1}"
```

#### Use Browser

Open the URL in the browser `open http://$SVC_GW_CLUSTER1`.

### Cluster2

Retrive the Istio Ingress Gateway url to access the application,

```bash
SVC_GW_CLUSTER2=$(kubectl --context ${CLUSTER2} -n istio-system get svc istio-ingressgateway -o jsonpath='{.status.loadBalancer.ingress[0].*}')
```

#### Call Service

Call the service using the script,

```bash
$TUTORIAL_HOME/bin/call_bgc_service.sh "${CLUSTER2}"
```

#### Poll Service

Poll the service using the script,

```bash
$TUTORIAL_HOME/bin/poll_bgc_service.sh "${CLUSTER2}"
```

#### Use Browser

Open the URL in the browser `open http://$SVC_GW_CLUSTER2`.
