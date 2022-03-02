# jetson-demos
Files to create a GPU cluster with Jetson xavier nx, jetson nano 4gb and jetson nano 2gb

Install driver:
```
kubectl create -f https://raw.githubusercontent.com/NVIDIA/k8s-device-plugin/v0.10.0/nvidia-device-plugin.yml
```

Check logs
```
stern --namespace kube-system "ndevices-dm"
```

Optional:
According to this guide https://k3d.io/v5.3.0/usage/advanced/cuda/
```
wget https://k3d.io/v5.3.0/usage/advanced/cuda/config.toml.tmpl -O /var/lib/rancher/k3s/agent/etc/containerd/
```

