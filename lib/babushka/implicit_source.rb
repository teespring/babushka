module Babushka
  class ImplicitSource < Source

    class NonexistentRepo
      def exists?
        false
      end
    end

    def initialize name
      raise ArgumentError, "Implicit sources require a name." if name.nil?
      init
      @name = name
    end

    def type
      :implicit
    end

    def path
      raise "Anonymous sources don't have a path on disk."
    end

    def repo
      NonexistentRepo.new
    end

    def present?
      false
    end

  end
end
