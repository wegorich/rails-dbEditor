class RegistrationsController < Devise::RegistrationsController
  def build_resource(hash=nil)
    super
    self.resource.logo ||= 'icons/user.png'
    self.resource.name ||= self.resource.email.partition('@')[1]
    self.resource
  end
end