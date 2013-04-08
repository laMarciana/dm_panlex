# dm\_panlex 
This package is an ORM mapping of [Panlex](http://panlex.org) database using Ruby [Data mapper](http://datamapper.org).

## Differences

Following are the only differences detected between the database created by this package (tested in PostgreSQL 9.1.6 on Debian Wheezy) and actual Panlex database:

* 'ON UPDATE CASCADE' in wcex-wc 1-n relation is not implemented because, as far as I know, dm-constraints can't do that without adding 'ON DELETE CASCADE'.
* A PK for cu(lv, co, loc, vb) is added because datamapper requires each model to have a PK. That makes cu(loc) field to be a required one even if it's not in original Panlex database. It forces as well cu(loc) and cu(loc) to be String instead of Text, as in MySQL a Text can't be a PK.
* Fields with 'character' type are changed to 'character varying'.
* PostgreSQL Cluster (http://www.postgresql.org/docs/8.1/static/sql-cluster.html) are not implemented.
* Unique indexes appear as 'UNIQUE' instead of 'UNIQUE CONSTRAINT' (don't know why).
* An 'index' is created for fields that are FK and haven't any index in the original Panlex database.
* Unique indexes are named 'unique\_\*' instead of '\*\_key'
* FK are named '\*\_fk' instead of '\_fkey'.
* When showing a table schema from the database, fields that 'belong to' some other table are listed as the last ones.

## TO DO

* Solve some of the differences if it is really needed.
