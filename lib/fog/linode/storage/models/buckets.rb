require 'fog/core/collection'

module Fog
  module Linode
    class Storage
      # Collection class for loading Bucket models
      class Buckets < Fog::Collection
        model Bucket

        def all(options = {})
          buckets = service.list_buckets(options)
          load buckets
        end

      end
    end
  end
end
