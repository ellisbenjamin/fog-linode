require 'fog/core/collection'

module Fog
  module Linode
    class Storage
      # Collection class for loading object storage key models
      class Keys < Fog::Collection
        model Key

        def all(options = {})
          keys = service.list_keys(options)
          load keys
        end

      end
    end
  end
end
