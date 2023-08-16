# hasura-chart <br> [![CI](https://github.com/gmarcha/hasura-chart/actions/workflows/ci.yaml/badge.svg)](https://github.com/gmarcha/hasura-chart/actions/workflows/ci.yaml)

A Helm chart to deploy a Hasura application on Kubernetes.

# Example

[![Landing page](.github/assets/kubernetes-resources.png)](https://gmarcha.com)

# Requirements

- install `helm`,
- a running kubernetes cluster (see `/scripts`).

# Usage

```bash
helm repo add gmarcha https://gmarcha.github.io/hasura-chart/
helm install hasura gmarcha/hasura
```

# Tutorials

Use bash scripts in `/scripts/install` to install required tools:
- `bash scripts/install/helm.sh` to install `helm` cli,
- `bash scripts/install/kubectl.sh` to install `kubectl` cli (optional),
- `bash scripts/install/k3d.sh` to install `k3d` cli (optional)
- `bash scripts/install/docker.sh` to install `docker` for `k3d` usage.

Use scripts in `/scripts/cluster` to run a k3d cluster:
- `bash scripts/cluster/create.sh` to create a cluster running on docker containers,
- `bash scripts/cluster/delete.sh` to delete cluster.

## Author

[@gmarcha](https://github.com/gmarcha)

## License

[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
