# This package is an ORM mapping of Panlex (http://panlex.org) database using Ruby Datamapper (http://datamapper.org)
# Following are the only differences between the database created by this package (tested in PostgreSQL) and actual Panlex database:
#
# - ap(dt) and us(dt), which are meant to store current data when creating a record, are set by the model (using dm-timestamp) instead that by the database
# - 'ON UPDATE CASCADE' in wcex-wc 1-n relatio is not implemented because, I far as I know, dm-constraints can't do that without adding 'ON DELETE CASCADE', too.
# - A PK for cu(lv, co, loc, vb) is added because datamapper requires each model to have a PK. That makes cu(loc) field to be a required one even if it's not in original Panlex database. It forces as well cu(loc) and cu(loc) to be String instead of Text, as in MySQL a Text can't be a PK
# - fields with 'character' type are changed to 'character varying'
# - PostgreSQL Cluster (http://www.postgresql.org/docs/8.1/static/sql-cluster.html) are not implemented
# - Unique indexes appear as 'UNIQUE' instead of 'UNIQUE CONSTRAINT' (don't know why)
# - 'index' are created for fields that are FK and haven't any index in the original Panlex database
# - Unique indexes are named 'unique_*' instead of '*_key'
# - FK are named '*_fk' instead of '_fkey'
# - when showing a table schema from the database, fields that 'belong to' some other table are listed as the last ones
#
# TO DO: Solve above points if some one is really needed

%w[
   data_mapper
].each do |lib|
   require lib
end

require 'dm_panlex/models/ap'
require 'dm_panlex/models/apli'
require 'dm_panlex/models/av'
require 'dm_panlex/models/cp'
require 'dm_panlex/models/cu'
require 'dm_panlex/models/df'
require 'dm_panlex/models/dm'
require 'dm_panlex/models/dn'
require 'dm_panlex/models/ex'
require 'dm_panlex/models/i1'
require 'dm_panlex/models/lc'
require 'dm_panlex/models/lv'
require 'dm_panlex/models/md'
require 'dm_panlex/models/mi'
require 'dm_panlex/models/mn'
require 'dm_panlex/models/us'
require 'dm_panlex/models/wc'
require 'dm_panlex/models/wcex'

DataMapper.finalize
