require 'fog/core/collection'

module Fog
  module Linode
    class Storage
      # Collection class for loading Cluster models
      class Clusters < Fog::Collection
        model Cluster

        def all(options = {})
          clusters = service.list_clusters(options)
          load clusters
        end

      end
    end
  end
end
