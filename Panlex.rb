require 'data_mapper'
require 'dm-core'

DataMapper.setup(:default, "postgres://postgres:ornitorrinc@localhost/panlex")

require_relative 'Ap'
require_relative 'Apli'
require_relative 'Av'
require_relative 'Cp'
require_relative 'Cu'
require_relative 'Df'
require_relative 'Dm'
require_relative 'Dn'
require_relative 'Ex'

DataMapper.finalize
