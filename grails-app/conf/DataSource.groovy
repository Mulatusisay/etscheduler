dataSource {
    pooled = true
    driverClassName = "org.postgresql.Driver"
    dialect = "org.hibernate.dialect.PostgreSQLDialect"
}

hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    //    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory' // Hibernate 3
    cache.region.factory_class = 'org.hibernate.cache.ehcache.EhCacheRegionFactory' // Hibernate 4
    singleSession = true // configure OSIV singleSession mode
    flush.mode = 'manual' // OSIV session flush mode outside of transactional context
}

// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "create-drop" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:postgresql://localhost:5432/etscheduler"
            username = "etscheduller"
            password = "etscheduller"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:postgres://jvajgutqlggalr:PS1cajdVxy5VfuJ0aCNrh-ioCn@ec2-54-235-246-67.compute-1.amazonaws.com:5432/d7mpr1go8ohiqm?ssl=true&sslfactory=org.postgresql.ssl.NonValidatingFactory"
            username = "d7mpr1go8ohiqm"
            password = "PS1cajdVxy5VfuJ0aCNrh-ioCn"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
           // uri = new URI(System.env.DATABASE_URL?:"postgres://ejnyeihcbnjrbj:oap2WlaplWmYarMOtrMZyfU3jb@ec2-54-83-56-177.compute-1.amazonaws.com:5432/d7e2j4bet4voep")
            uri = new URI(System.env.DATABASE_URL?:"postgres://jvajgutqlggalr:PS1cajdVxy5VfuJ0aCNrh-ioCn@ec2-54-235-246-67.compute-1.amazonaws.com:5432/d7mpr1go8ohiqm")
            url = "jdbc:postgresql://" + uri.host + ":" + uri.port + uri.path
            username = uri.userInfo.split(":")[0]
            password = uri.userInfo.split(":")[1]
        }
    }
}
