# This package is an ORM mapping of Panlex (http://panlex.org) database using Ruby Datamapper (http://datamapper.org)
# Following are the only differences between the database created by this package (tested in PostgreSQL) and actual Panlex database:
#
# - ap(dt) and us(dt), which are meant to store current data when creating a record, are set by the model (using dm-timestamp) instead that by the database
# - 'ON UPDATE CASCADE' in wcex-wc 1-n relatio is not implemented because, I far as I know, dm-constraints can't do that without adding 'ON DELETE CASCADE', too.
# - A PK for cu(lv, co, loc, vb) is added because datamapper requires each model to have a PK. That makes cu(loc) field to be a required one even if it's not in original Panlex database
# - fields with 'character' type are changed to 'character varying'
# - PostgreSQL Cluster (http://www.postgresql.org/docs/8.1/static/sql-cluster.html) are not implemented
# - Unique indexes appear as 'UNIQUE' instead of 'UNIQUE CONSTRAINT' (don't know why)
# - 'index' are created for fields that are FK and haven't any index in the original Panlex database
# - Unique indexes are named 'unique_*' instead of '*_key'
# - FK are named '*_fk' instead of '_fkey'
# - when showing a table schema from the database, fields that 'belong to' some other table are listed as the last ones
#
# TODO: Solve above points if some one is really needed

require 'data_mapper'
require 'dm-core'
require 'dm-timestamps'
require 'dm-constraints'
require 'dm-migrations'

# Connect to the database where Panlex schema has to be created, see http://datamapper.org/getting-started.html (Specify your database connection section)
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
