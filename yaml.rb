require 'yaml'

yaml = <<YAML
  sum: 510,
  orders:
    - 260
    - 250
YAML

object = YAML.load yaml
# object = YAML.open yaml #=> NoMethodError
# object = YAML.read yaml #=> NoMethodError
# object = YAML.read yaml #=> NoMethodError

p object  #=> {"sum"=>510, "orders"=>[260, 250]}
