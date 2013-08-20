#!/usr/bin/perl

$cluster_cpu_usage = `perl /var/www/cacti/scripts/check_vmware.pl --server $ARGV[0] --username $ARGV[1] --password $ARGV[2] --host $ARGV[3] --mode MRTG --report cpu|head -1`;

$cluster_cpu_usage_cur = $cluster_cpu_usage;

printf("percent:%.2f\n", $cluster_cpu_usage_cur);
