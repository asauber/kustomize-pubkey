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

## Example

With the repo as it is, you should see output similar to the following:

```
/Users/ajs/src/kustomize-pubkey $ make kustomize

./kustomize.sh
apiVersion: v1
data:
  pubkeys: c3NoLXJzYSBBQUFBQjNOemFDMXljMkVBQUFBREFRQUJBQUFCZ1FDeXJBSUk5MkVUc21YWnA3LzA2WjJmajVOZ1dLYW5NWWNBUGs2ZmVQSXNuRWR6VlBHQWU3ODFYSndZZ1FOblYxa1dndWxaZVhRYnFad3ZqemV0WHYweTRqRnZmNXh0Z3VXa2lMSHMwUlFPaUQrZGE0RWtCWHZrYUUrUUEwTkVEMDVDd1VtaHU2WGZsS0NvcDlBa3hNaGZTUnRZR2hPaXFFMXhBb0RGWlh6cEVnRUV5d3FUMmVSTjVYNWUxS3lQcXhaWUZnaFZ6NVdHTkVvL0ZxYXBHUkIwRlNJSEE2RUNCQ2hmbkZ3aFgwT1VvanY1ME02bmJ3aXI5ZDVLZFc5dXVsZmI3ZStWU3NzUEl1LzhsOGF3WWJsVFNSV1gvVDNiYlZiL0RHMFlYOGREVFBCMmZHV2ZaMytac211SnhzOEwzZUh3TWhwN2cvVC9sWXhycmwrL1hJbWQ1cGIzRnYyOVFnN1d1Z0lpQmNLdWhHamMvcEd3NVZ0a1MrN25rQktjN0RHbTNORjdWaDFVZU8vb1BCdmkzUDNhcU5oUkt3ZTNubFJ0SVJJN1VIZHlXL1NPaklQOWQ4Y2lWdU56My9DQTc3RUN5MXc4aFhjUlNRNGZEY1BOUEZXV0ZDcHB2aTVieWd0NkJ5Y3IwNHh6cEFMeC83UmoycCsyaUlMS0Q3T3RrUzA9Cg==
kind: Secret
metadata:
  name: asauber-pubkeys
  namespace: kube-system
type: Opaque
```

Note that you can have kustomize yield a plain manifest this way:

```
$ ./kustomize.sh >secret.yaml
```
