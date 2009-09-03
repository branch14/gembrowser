class MoritzController < ApplicationController
  relation_browser :mproxy do |config|
    config.hide_class 'Dependency'
    config.hide_class 'Authorship'
  end
end
