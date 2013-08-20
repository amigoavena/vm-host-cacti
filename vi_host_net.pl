#!/usr/bin/perl

$cluster_net_usage = `perl /var/www/cacti/scripts/check_vmware.pl --server $ARGV[0] --username $ARGV[1] --password $ARGV[2] --host $ARGV[3] --mode MRTG --report net|head -1`;

$cluster_net_usage_cur = $cluster_net_usage;

printf("usage:%.2f\n", $cluster_net_usage_cur);
