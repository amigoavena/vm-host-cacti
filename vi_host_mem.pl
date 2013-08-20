#!/usr/bin/perl

$cluster_mem_usage = `perl /var/www/cacti/scripts/check_vmware.pl --server $ARGV[0] --username $ARGV[1] --password $ARGV[2] --host $ARGV[3] --mode MRTG --report mem|head -1`;

$cluster_mem_usage_cur = $cluster_mem_usage;

printf("percent:%.2f\n", $cluster_mem_usage_cur);
