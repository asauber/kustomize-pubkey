export KUSTOMIZE_PLUGIN_HOME="$(pwd)/kustomize-plugin-home"
kubectl kustomize --enable-alpha-plugins .
