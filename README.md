## Kustomize Plugin Example

Generates a kubernetes secret containing all of your GitHub public keys.

## Setup

```
brew install kustomize coreutils
```

## Usage

Edit `my-github-pubkey.yaml` to use your GitHub username.

```
githubUsername: <your username>
```

Run kustomize with the plugin directory specified

```
./kustomize.sh
```
