resource = "cinder"
main_role = "volume"
role_name = "#{resource}-#{main_role}"

unless node["roles"].include?(role_name)
  barclamp_role role_name do
    service_name node[resource][main_role]["service_name"]
    action :remove
  end

  # delete all node attributes
  node.delete(resource)

  node.save
end
