module Ruboty
  module Handlers
    class KorokUso < Base
      on /.*うそ/u, name: 'uso', description: 'little lie'

      def uso(message)
        Ruboty::KorokUso::Actions::Uso.new(message).call
      end
    end
  end
end
