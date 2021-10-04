## Kustomize Plugin Example

Generates a kubernetes secret containing all of your GitHub public keys.

## Setup

```
make setup
```

## Usage

Edit `my-github-pubkey.yaml` to use your GitHub username.

```
githubUsername: <your username>
```

Run kustomize

```
make kustomize
```

Refer to `kustomize.sh` for the required flags and environment variables.
