package com.grailsbrains
import grails.plugin.springsecurity.annotation.Secured
@Secured('permitAll')
class SecureController {
    def springSecurityService

    def index() {
        def currentUser = springSecurityService.currentUser
        def name = currentUser.getUsername()
        render (view: 'welcome', model:[username:name ])
    }
}
