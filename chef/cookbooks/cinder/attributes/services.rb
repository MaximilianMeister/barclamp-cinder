case node["platform"]
when "suse"
  default["cinder"]["services"] = {
    "controller" => ["openstack-cinder-api", "openstack-cinder-scheduler"],
    "volume" => ["openstack-cinder-volume"]
  }
end
