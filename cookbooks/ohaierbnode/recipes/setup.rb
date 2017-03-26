package 'tree' do

  action :install
end

package 'curl' do

 action :upgrade

end

package 'vim' do

  action :install

end

template '/tmp/motd.txt' do

    action :create
    source 'setup.erb'

end
