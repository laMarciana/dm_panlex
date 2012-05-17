require 'data_mapper'
require 'dm-core'
require 'dm-migrations'

DataMapper.setup(:default, "postgres://postgres:ornitorrinc@localhost/panlex_wc")

require_relative 'Ap'
require_relative 'Apli'
require_relative 'Av'
require_relative 'Cp'
require_relative 'Cu'
require_relative 'Df'
require_relative 'Dm'
require_relative 'Dn'
require_relative 'Ex'
require_relative 'I1'
require_relative 'Lc'
require_relative 'Lv'
require_relative 'Md'
require_relative 'Mi'
require_relative 'Mn'
require_relative 'Us'
require_relative 'Wc'
require_relative 'Wcex'

DataMapper.finalize

DataMapper.auto_migrate!
