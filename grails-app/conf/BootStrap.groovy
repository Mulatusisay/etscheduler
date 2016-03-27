import com.etscheduler.User
import com.etscheduler.Requestmap
import com.etscheduler.Role
import com.etscheduler.UserRole
import grails.util.Environment

class BootStrap {

    def init = { servletContext ->
        println "Bootstrap is running"

        // Request map Stored in Database
        for (String url in [
                '/', '/index', '/index.gsp', '/**/favicon.ico',
                '/**/javascripts/**', '/**/stylesheets/**', '/**/images/**', '/assets/**',
                '/login', '/login.*', '/login/*',
                '/logout', '/logout.*', '/logout/*']) {
            Requestmap.findOrSaveByUrlAndConfigAttribute(url, 'permitAll').save(flush: true, failOnError: true)
        }

         Requestmap.findOrSaveByUrlAndConfigAttribute('/staff/**', 'ROLE_ADMIN').save(flush: true, failOnError: true)
         Requestmap.findOrSaveByUrlAndConfigAttribute('/training/**', 'ROLE_ADMIN').save(flush: true, failOnError: true)
         Requestmap.findOrSaveByUrlAndConfigAttribute('/trainingRecord/**', 'permitAll').save(flush: true, failOnError: true)
        Requestmap.findOrSaveByUrlAndConfigAttribute('/schedule/**', 'ROLE_ADMIN').save(flush: true, failOnError: true)
        println Environment.getCurrent()

        /*if (Environment.getCurrent() != Environment.PRODUCTION) {

            

            User user = User.findByUsername('admin')

            if(!user) {

                User.SaveByUsernameAndPassword(
                        'admin', 'password'
                ).save(flush: true, failOnError: true)
            }

            println "Bootstrap is done."
        }*/
        def adminRole = new Role(authority:'ROLE_ADMIN')
        assert adminRole.save(flush: true)
        def adminUser = new User(username:'admin', password:'password')
        assert adminUser.save(flush: true)
        adminUser.validate()
        println adminUser.errors
        UserRole.create adminUser, adminRole, true
    }
    def destroy = {
    }
}
