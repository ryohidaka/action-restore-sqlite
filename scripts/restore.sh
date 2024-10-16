#!/bin/bash

# Arguments
DB_NAME=$1
DUMP_FILE=$2

# Log start of the script
echo "::debug::Starting the SQLite restore process..."

# Log the database and dump file
echo "::notice title=Database::$DB_NAME"
echo "::notice title=Dump File::$DUMP_FILE"

# Execute SQLite restore command using .read
echo "::debug::Restoring the SQLite database from the dump file..."

sqlite3 $DB_NAME <<EOF
.read $DUMP_FILE
EOF

# Log completion
echo "::notice::Restore process completed. Database restored from $DUMP_FILE"
