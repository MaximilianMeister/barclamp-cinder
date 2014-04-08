name "cinder-controller_remove"
description "Deactivate Cinder Controller Role services"
run_list(
  "recipe[cinder::deactivate_controller]"
)
default_attributes()
override_attributes()
