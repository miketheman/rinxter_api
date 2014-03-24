module RinxterApi
  # Base class
  # All data objects should inherit this class, and have the
  # ability to perform web calls.
  # @author Mike Fiedler <miketheman@gmail.com>
  # @since 0.1.0
  class Base < RinxterApi::WebCall
    include Helpers
  end
end
