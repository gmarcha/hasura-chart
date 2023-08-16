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

## Author

[@gmarcha](https://github.com/gmarcha)

## License

[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
