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

## LICENSE

Copyright 2013 Marc Busqué - <marc@lamarciana.com>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
