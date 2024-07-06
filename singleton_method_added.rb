module Chatty
  def Chatty.singleton_method_added(id)
    puts "Adding #{id.id2name}"
  end
  def self.one()     end
  def two()          end
  def Chatty.three() end
end

# Adding singleton_method_added
# Adding one
# Adding three

# It will not trigger callback when you define an instance method.
