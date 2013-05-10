class RegistrationsController < Devise::RegistrationsController
  def build_resource(hash=nil)
    super
    self.resource.name ||= self.resource.email[0..self.resource.email.index('@')-1]
    self.resource
  end
end