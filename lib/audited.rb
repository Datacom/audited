require 'rails/observers/active_model/active_model'


module Audited
  class << self
    attr_accessor :ignored_attributes, :current_user_method, :audit_class

    def store
      RequestStore.store[:audited_store] ||= {}
    end
  end

  @ignored_attributes = %w(lock_version created_at updated_at created_on updated_on)

  @current_user_method = :current_user
end
