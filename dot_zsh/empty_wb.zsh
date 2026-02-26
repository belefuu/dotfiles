# Workbench k8s

export VAULT_ADDR="https://vault.int.afc.sas.com"

alias kc='kubectl --kubeconfig ~/.kube/wbdevcontrol.kubeconfig'
alias k9s-wb='k9s --kubeconfig ~/.kube/wbdevcontrol.kubeconfig'

wb-kubeconfig() {
	local site="${1:-devmain}"
	vault kv get -format=json \
		workbench/systems/workbench/dev/wbdevcontrol-state/aws/eks.kubeconfig \
		| jq -r '.data.data.file' > ~/.kube/wbdevcontrol.kubeconfig
	kubectl --kubeconfig ~/.kube/wbdevcontrol.kubeconfig \
		config set-context --current --namespace="cp${site}"
	echo "Ready: ~/.kube/wbdevcontrol.kubeconfig (namespace: cp${site})"
}
