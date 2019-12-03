# twrtools

`twrtools` is a container image that can be used to troubleshoot things in a kubernetes world. Run standalone to troubleshoot general connectivity or run as a sidecar to another container to provide additional tooling.


## Usage

You can do something stupid like this to deploy the container image to a kubernetes cluster and then `exec` in to run commands interactively.

```
$ kubectl run --generator=run-pod/v1 toolbox --image=jmsearcy/twrtools --command -- sleep 360000
```
