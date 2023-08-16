ENV ?= dev
KUBECONFIG ?= $(HOME)/.kube/config
NS ?= default
OUT ?= wide

RELEASE ?= hasura

HELM := helm --kubeconfig $(KUBECONFIG) -n $(NS)
KUBECTL := kubectl --kubeconfig $(KUBECONFIG) -n $(NS)

# Common rules

all: help

help:
	@ echo "Usage: make <target>"
	@ echo ""
	@ echo "Helm targets:"
	@ echo "  helm.all"
	@ echo "  helm.install"
	@ echo "  helm.uninstall"
	@ echo "  helm.upgrade"
	@ echo "  helm.get"
	@ echo "  helm.logs"
	@ echo "  helm.status"

# Helm rules

helm.all: helm.build helm.install

helm.build:
	$(HELM) dependency build ./charts/hasura

helm.install:
	$(HELM) install $(RELEASE) ./charts/hasura

helm.uninstall:
	$(HELM) uninstall $(RELEASE)

helm.upgrade:
	$(HELM) upgrade $(RELEASE) ./charts/hasura

helm.get:
	$(HELM) get all $(RELEASE)

helm.status:
	$(HELM) status $(RELEASE)

k8s.get:
	$(KUBECTL) get all -o $(OUT)

k8s.logs:
	$(KUBECTL) logs -f deploy/$(RELEASE)
