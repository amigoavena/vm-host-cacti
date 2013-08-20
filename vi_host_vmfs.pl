#!/usr/bin/perl

$host_vmfs_usage = `perl /var/www/cacti/scripts/check_vmware.pl --server $ARGV[0] --username $ARGV[1] --password $ARGV[2] --instance $ARGV[3] --report disk|awk -F \"\\(|%\" '{print \$2}'`;

printf("percent:%.1f\n", $host_vmfs_usage);
