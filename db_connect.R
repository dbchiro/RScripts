# . ---------------------------
# == Connexion BDD postGIS ====
# . ---------------------------

## Supressions de toutes les connexions precedentes
lapply(dbListConnections(drv = dbDriver("PostgreSQL")),
       function(x) {dbDisconnect(conn = x)})

# type de connexion PostgreSQL et information de connexion 
drv <- dbDriver("PostgreSQL")

dotenv::load_dot_env() 

# Declare db connection settings
dbname = Sys.getenv("DBNAME")
dbhost = Sys.getenv("DBHOST")
dbport = Sys.getenv("DBPORT")
dbuser = Sys.getenv("DBUSER")
dbpwd = Sys.getenv("DBPWD")

print(dbpwd)
# connexion a la BDD
con_db <- dbConnect(drv, 
       dbname = dbname,
       host = dbhost,
       port = dbport,
       password = dbpwd,
       user = dbuser,
       )

dbListTables(con_db)
rm(dbhost,dbname,dbuser,dbpwd,dbport)