# debug Squash operator (solo.io)

This project is using the ansible squash operator created here https://github.com/dwojciec/ansible-role-squash-k8s


clone project 
```
$ git clone git@github.com:dwojciec/debug-operator.git
$ cd debug-operator
```

to install the squash operator

```
$ install.sh squash-test 
```

to deploy a squash instance
```
$ oc create -f cr.yaml
```

to remove all
```
$ oc delete squash-test
```

