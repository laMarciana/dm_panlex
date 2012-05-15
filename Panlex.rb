require 'data_mapper'
require 'dm-core'

DataMapper.setup(:default, "postgres://postgres:ornitorrinc@localhost/panlex")

require_relative 'Ap'
require_relative 'Apli'
require_relative 'Av'

DataMapper.finalize
