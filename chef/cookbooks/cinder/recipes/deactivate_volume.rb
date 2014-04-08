unless node['roles'].include?('cinder-volume')
  node["cinder"]["services"]["volume"].each do |name|
    service name do
      action [:stop, :disable]
    end
  end
  node['cinder']['services'].delete('volume')
  node.delete('cinder') if node['ceilometer']['services'].empty?
  node.save
end
