#!/bin/bash

# Check if a URL is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <url>"
  exit 1
fi

# Assign the first argument to the variable 'url'
url=$1

# Print the URL
echo "The provided URL is: $url"

argocd app create adservice --repo $url --path adservice --dest-namespace default --dest-server https://kubernetes.default.svc --directory-recurse --sync-policy automated
argocd app create cartservice --repo $url --path cartservice --dest-namespace default --dest-server https://kubernetes.default.svc --directory-recurse --sync-policy automated
argocd app create checkoutservice --repo $url --path checkoutservice --dest-namespace default --dest-server https://kubernetes.default.svc --directory-recurse --sync-policy automated
argocd app create currencyservice --repo $url --path currencyservice --dest-namespace default --dest-server https://kubernetes.default.svc --directory-recurse --sync-policy automated
argocd app create emailservice --repo $url --path emailservice --dest-namespace default --dest-server https://kubernetes.default.svc --directory-recurse --sync-policy automated
argocd app create paymentservice --repo $url --path paymentservice --dest-namespace default --dest-server https://kubernetes.default.svc --directory-recurse --sync-policy automated
argocd app create productcatalogservice --repo $url --path productcatalogservice --dest-namespace default --dest-server https://kubernetes.default.svc --directory-recurse --sync-policy automated
argocd app create recommendationservice --repo $url --path recommendationservice --dest-namespace default --dest-server https://kubernetes.default.svc --directory-recurse --sync-policy automated
argocd app create redis-cart --repo $url --path redis-cart --dest-namespace default --dest-server https://kubernetes.default.svc --directory-recurse --sync-policy automated
argocd app create shippingservice --repo $url --path shippingservice --dest-namespace default --dest-server https://kubernetes.default.svc --directory-recurse --sync-policy automated