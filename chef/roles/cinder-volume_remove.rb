name "cinder-volume_remove"
description "Deactivate Cinder Volume Role services"
run_list(
  "recipe[cinder::deactivate_volume]"
)
default_attributes()
override_attributes()
