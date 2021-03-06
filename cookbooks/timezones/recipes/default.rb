zonepath = '/usr/share/zoneinfo/'
zone = "#{node.engineyard.environment['timezone']}"

has_nginx = ['solo','app','app_master'].include?(node['dna']['instance_role'])

if not File.exists?(File.join(zonepath, zone)) and zone != '' and not zone.nil?
  raise "Timezone '#{zone}' not recognized."
end

service "cron"

link '/etc/localtime' do
  to "#{File.join(zonepath, zone)}"
  notifies :restart, 'service[cron]', :delayed
  notifies :restart, 'service[syslog-ng]', :delayed
  if has_nginx
    notifies :restart, 'service[nginx]', :delayed
  end
  only_if {File.exists?(File.join(zonepath, zone)) and zone != '' and not zone.nil?}
end
