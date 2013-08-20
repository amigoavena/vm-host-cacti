#!/usr/bin/perl

$host_vmfs_usage = `perl /usr/share/cacti/site/scripts/check_vmware.pl --server $ARGV[0] --username $ARGV[1] --password $ARGV[2] --instance $ARGV[3] --report disk| head -1 `;

chomp($host_vmfs_usage);

my @vmInfo= split('\|',$host_vmfs_usage);

my ($vmfsFree,$vmfsTotal) = ($vmInfo[1] =~ m/free=(\d+);;;0; total=(\d+);;;0;/);

$percent = ($vmfsFree/$vmfsTotal)*100;

printf("percent:%.1f\n", $percent);
