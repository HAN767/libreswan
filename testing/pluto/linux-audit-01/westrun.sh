ipsec auto --up  ikev1
ipsec auto --delete  ikev1
ipsec auto --up  ikev1-aggr
ipsec auto --delete  ikev1-aggr
ipsec auto --up  ikev2
ipsec auto --delete  ikev2
ipsec auto --up ikev2-failtest
ipsec auto --delete ikev2-failtest
ipsec auto --up ipsec-failtest
ipsec auto --delete ipsec-failtest
echo done
