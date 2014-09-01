name "cinder-volume_remove"
description "Deactivate Cinder Volume Role"
run_list(
  "recipe[cinder::remove_volume]"
)
default_attributes()
override_attributes()
