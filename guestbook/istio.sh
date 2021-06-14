# Istio Installlation steps
echo "Installing istio"
curl -L https://istio.io/downloadIstio | sh -
cd istio-1.10.1
export PATH=$PWD/bin:$PATH
istioctl install --set profile=demo -y
cd ..
kubectl label namespace default istio-injection=enabled
