module Ruboty
  module KorokUso
    module Actions
      class Uso < Ruboty::Actions::Base
        def call
          message.reply(sprintf('@%s %s', message.from_name, getLine(rand(lineno)+1)))
        end

        private

        def filename
          File.expand_path('../../files/sentences.txt', __FILE__)
        end
        def lineno
          File.open(filename) do |file|
            nil while file.gets
            file.lineno
          end
        end
        def getLine(index)
          File.open(filename) do |file|
            file.each_line do |line|
              if file.lineno == index
                return line
              end
            end
          end
        end
      end
    end
  end
end
