oc new-project $1
sed -e "s|REPLACE_NAMESPACE|$1|g" squash.v0.3.1.clusterserviceversion.yaml > squash.v0.3.1.clusterserviceversion-dev.yaml
oc create -f squash.v0.3.1.clusterserviceversion-dev.yaml
sed -e "s|REPLACE_NAMESPACE|$1|g" squash-subscription.yaml > squash-subscription-dev.yaml
oc create -f squash-subscription-dev.yaml
oc adm policy add-cluster-role-to-user cluster-admin system:serviceaccount:$1:squash-operator
oc adm policy add-scc-to-user privileged -n $1 -z default
