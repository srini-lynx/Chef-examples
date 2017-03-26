package 'vim' do

  action :install
end

package 'tree' do

  action :install
end

package 'curl' do

 action :upgrade
end

file '/etc/motd' do

 content "This Server is the Property of the Chef-Admin .. Please do Consult Them before any Change !!!!

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
           Hostname       :  #{node['hostname']}
           IP Address     :  #{node['ipaddress']}
           CPU 0 MHZ      :  #{node['cpu']['0']['mhz']}
           Time Zone      :  #{node['time']['timezone']}
           Kernel_OS      :  #{node['kernel']['os']}
           Block_Device   :  #{node['block_device']['sda']['size']}

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

"

end

