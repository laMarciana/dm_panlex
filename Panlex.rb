require 'data_mapper'
require 'dm-core'

DataMapper.setup(:default, "postgres://postgres:ornitorrinc@localhost/panlex")

require_relative 'Ap'

DataMapper.finalize
