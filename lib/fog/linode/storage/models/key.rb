require 'fog/core/model'

module Fog
  module Linode
    class Storage
      # Read-only model for Linode object storage keys
      class Key < Fog::Model
        identity :id

        attribute :label
        attribute :access_key
        attribute :secret_key
      end
    end
  end
end
