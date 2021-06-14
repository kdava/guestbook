#Connecting to the created cluster
echo "Connecting to cluster"
gcloud container clusters get-credentials guestbook-cluster --region northamerica-northeast1 --project idyllic-pottery-316421

# Istio Installlation steps
echo "Installing istio"
curl -L https://istio.io/downloadIstio | sh -
cd istio-1.10.1
export PATH=$PWD/bin:$PATH
istioctl install --set profile=demo -y
cd ..
kubectl label namespace default istio-injection=enabled
kubectl apply -f istio-manifests.yaml
