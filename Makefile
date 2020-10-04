install-argocd: 
	helm upgrade --install argocd argo/argo-cd -n argocd -f values.yaml	