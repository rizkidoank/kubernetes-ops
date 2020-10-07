install-base:
	@kubectl apply -f namespaces/
	@kubectl apply -f manifests/base/

install-argocd: 
	@helm upgrade --install argocd argo/argo-cd -n argocd -f release/argo-cd/values.yaml	

install-bootstrap:
	@kubectl apply -f bootstrap.yaml
