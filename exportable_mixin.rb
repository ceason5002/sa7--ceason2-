require "json"

module Exportable
  def to_json(*_args)
    JSON.pretty_generate(self.to_h)
  end
end
