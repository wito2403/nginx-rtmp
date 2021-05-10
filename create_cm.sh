#create configmap

kubectl delete cm inz-cm    2>> output.log
kubectl create cm inz-cm    --from-file=ingest=ingest.conf \
                            --from-file=c1=cpu-1s.conf \
                            --from-file=c2=cpu-2s.conf \
                            --from-file=g1=gpu-1s.conf \
                            --from-file=g2=gpu-2s.conf