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
            dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:postgresql://localhost:5432/etscheduller"
            username = "etscheduller"
            password = "etscheduller"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:postgresql://ec2-54-195-252-202.eu-west-1.compute.amazonaws.com:5432/d8aucno7k9hdob?ssl=true&sslfactory=org.postgresql.ssl.NonValidatingFactory"
            username = "jewszvqwuzilfh"
            password = "JIEovrwNuJ94kitsq0BpUhVuAD"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            uri = new URI(System.env.DATABASE_URL?:"postgres://jdsgxvfryzbbdz:Bz0EOSf3LGvhS4jgEIaMzxjihh@ec2-54-217-231-152.eu-west-1.compute.amazonaws.com:5432/demmok54t9na9m")
            url = "jdbc:postgresql://" + uri.host + ":" + uri.port + uri.path
            username = uri.userInfo.split(":")[0]
            password = uri.userInfo.split(":")[1]
        }
    }
}
