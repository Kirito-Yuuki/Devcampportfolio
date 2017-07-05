Model SetSource
  extend ActiveSupport::Concern

  included do 
    before_filter :set_source
  end
__END__