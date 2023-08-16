# Hasura chart

An Helm chart to deploy Hasura.

## Usage

[Helm](https://helm.sh) must be installed to use the charts.  Please refer to Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

```bash
helm repo add gmarcha https://gmarcha.github.io/hasura-chart
```

If you had already added this repo earlier, run `helm repo update` to retrieve the latest versions of the packages.  You can then run `helm search repo gmarcha` to see the charts.

To install the chart hasura:

```bash
helm install my-release gmarcha/hasura
```

To uninstall the chart:

```bash
helm delete my-release
```
