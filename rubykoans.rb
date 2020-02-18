require 'rubygems'
require 'sinatra'
require 'haml'

not_found do
  haml :error
end

get '/' do
  @page = 'nix'
  @editors = [
    {:name => 'Vim',      :url => 'https://github.com/macvim-dev/macvim'},
    {:name => 'Emacs',    :url => 'https://www.gnu.org/software/emacs/'},
    {:name => 'TextMate', :url => 'http://macromates.com'},
    {:name => 'RubyMine', :url => 'http://www.jetbrains.com/ruby'},
    {:name => 'VSCode',    :url => 'https://code.visualstudio.com/'}
  ]

  haml :index
end

get '/windows/?' do
  @page = 'windows'
  @editors = [
    {:name => 'VSCode',        :url => 'https://code.visualstudio.com/'},
    {:name => 'RubyMine',      :url => 'http://www.jetbrains.com/ruby'},
    {:name => 'Atom',          :url => 'http://atom.io'},
    {:name => 'Vim',           :url => 'https://www.vim.org/download.php'}
  ]

  haml :windows
end
