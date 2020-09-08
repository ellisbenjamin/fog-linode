module Fog
  module Linode
    class Storage
      # This class provides the actual implementation for service calls
      class Real
        def list_clusters(options = {})
          response = request(
            expects: [200],
            method: 'GET',
            path: 'object-storage/clusters',
            query: options
          )

          response.body['data']
        end
      end
    end
  end
end
