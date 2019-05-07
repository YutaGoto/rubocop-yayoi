module Hook
  def hook(&block)
    module_eval { prepend Module.new(&block) }
  end
end

class Class
  include Hook
end
