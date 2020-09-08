require 'fog/core/model'

module Fog
  module Linode
    class Storage
      # Read-only model for Linode instance types
      class Bucket < Fog::Model
        identity :label

        attribute :created
        attribute :size
        attribute :hostname
        attribute :cluster
      end
    end
  end
end
