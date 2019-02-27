# debug-operator

'''
$ oc new-project dw-squash
$ oc create -f squash.v0.3.1.clusterserviceversion.yaml
$ oc create -f squash-subscription.yaml
$ oc adm policy add-cluster-role-to-user cluster-admin system:serviceaccount:dw-squash:squash-operator
$ oc adm policy add-scc-to-user privileged -n dw-squash -z default
'''
