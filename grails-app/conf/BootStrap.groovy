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
        // Permit All
        //  Requestmap.findOrSaveByUrlAndConfigAttribute('/dashboard/**', 'permitAll').save()
         Requestmap.findOrSaveByUrlAndConfigAttribute('/Schedule/**', 'permitAll').save(flush: true, failOnError: true)
         Requestmap.findOrSaveByUrlAndConfigAttribute('/trainingRecord/index.gsp', 'permitAll').save(flush: true, failOnError: true)
        Requestmap.findOrSaveByUrlAndConfigAttribute('/qcpc/index/*', 'permitAll').save(flush: true, failOnError: true)
        Requestmap.findOrSaveByUrlAndConfigAttribute('/qcpc/**', 'permitAll').save(flush: true, failOnError: true)
        Requestmap.findOrSaveByUrlAndConfigAttribute('/qcpc.*', 'permitAll').save(flush: true, failOnError: true)
        Requestmap.findOrSaveByUrlAndConfigAttribute('/qcpc/*', 'permitAll').save(flush: true, failOnError: true)

        // Added for accessing .. by user name
       // Requestmap.findOrSaveByUrlAndConfigAttribute('/blog/**', 'permitAll').save()

        // Permitted to Logged In Users Only
         Requestmap.findOrSaveByUrlAndConfigAttribute('/staff/**', 'ROLE_ADMIN').save(flush: true, failOnError: true)
         Requestmap.findOrSaveByUrlAndConfigAttribute('/training/**', 'ROLE_ADMIN').save(flush: true, failOnError: true)
         Requestmap.findOrSaveByUrlAndConfigAttribute('/trainingRecord/**', 'isFullyAuthenticated()').save(flush: true, failOnError: true)
         Requestmap.findOrSaveByUrlAndConfigAttribute('/schedule/**', 'ROLE_ADMIN').save(flush: true, failOnError: true)
         Requestmap.findOrSaveByUrlAndConfigAttribute('/employeedetail/**', 'ROLE_ADMIN').save(flush: true, failOnError: true)
        Requestmap.findOrSaveByUrlAndConfigAttribute('/workdetail/create', 'ROLE_ADMIN').save(flush: true, failOnError: true)
        Requestmap.findOrSaveByUrlAndConfigAttribute('/workdetail/**', 'ROLE_ADMIN').save(flush: true, failOnError: true)
        Requestmap.findOrSaveByUrlAndConfigAttribute('/workdetail/index/*', 'ROLE_ADMIN').save(flush: true, failOnError: true)

        //************************************************************************************************************

         print("Test data generation in progress ...")

        //************************************************************************************************************

        println Environment.getCurrent()
//
        if (Environment.getCurrent() != Environment.PRODUCTION) {

            User adminuser = User.findByUsername('admin')

          /*  if(!user) {

                User.SaveByUsernameAndPassword(
                        'admin', 'password'
                ).save(flush: true, failOnError: true)
            }
            if(null==user){
                User.SaveByUsernameAndPassword(
                        'admin', 'password'
                ).save(flush: true, failOnError: true)
            } */

            //ccreate role
            if (!adminuser){
            def adminRole = new Role(authority:'ROLE_ADMIN')
            assert adminRole.save(flush: true)
            // Assign role to user
            def adminUser = new User(username:'admin', password:'password')
            assert adminUser.save(flush: true)
            adminUser.validate()
            println adminUser.errors
            UserRole.create adminUser, adminRole, true
            }
            println "Bootstrap is done."
        }//*/

    }
    def destroy = {
    }
}
