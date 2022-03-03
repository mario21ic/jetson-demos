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

Debugging with crictl:
```
sudo crictl ps -a
sudo crictl logs <container-id>
sudo crictl rm $(sudo crictl ps -a|grep Exited|awk '{print $1}')
```

TODO:
- Use gpu as resource quota 
https://scalingpythonml.com/2021/02/22/tagging-arm-nvidia-jetson-machines-with-gpus-in-my-k3s-cluster.html
https://blogs.windriver.com/wind_river_blog/2020/06/nvidia-k8s-device-plugin-for-wind-river-linux/

