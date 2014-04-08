unless node['roles'].include?('cinder-controller')
  node["cinder"]["services"]["controller"].each do |name|
    service name do
      action [:stop, :disable]
    end
  end
  node['cinder']['services'].delete('controller')
  node.delete('cinder') if node['ceilometer']['services'].empty?
  node.save
end
