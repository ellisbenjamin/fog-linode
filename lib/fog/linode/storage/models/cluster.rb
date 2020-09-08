require 'fog/core/model'

module Fog
  module Linode
    class Storage
      # Read-only model for Linode obj clusters
      class Cluster < Fog::Model
        identity :id

        attribute :status
        attribute :domain
        attribute :region
        attribute :static_site_domain
      end
    end
  end
end
