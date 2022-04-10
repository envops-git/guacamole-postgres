
#!/bin/sh

su - postgres

psql -f pg_backup.bak postgres