module Fog
  module Linode
    # Fog service class for Linode Object Storage service
    class Storage < Fog::Service
      requires :linode_token

      request_path 'fog/linode/storage/requests'
      request :list_buckets
      request :list_clusters
      request :list_keys

      model_path 'fog/linode/storage/models'
      collection :buckets
      model :bucket
      collection :clusters
      model :cluster
      collection :keys
      model :key

      # Real implementation for Linode Objec Storage service
      class Real < Service
      end

      # Mock service for unit tests
      # NOTE: we do not currently use this, but Fog throws an
      #       error if it's not defined for a Service class
      class Mock
        def initialize(_options = {}); end
      end
    end
  end
end
