package com.grailsbrains

import com.grailsbrains.digitalMarketing.FacebookData
import com.restfb.DefaultFacebookClient
import com.restfb.Parameter
import facebook4j.Facebook
import facebook4j.FacebookException
import facebook4j.auth.AccessToken
import grails.plugin.springsecurity.annotation.Secured
import com.restfb.FacebookClient


import javax.servlet.ServletException
@Secured('permitAll')
class CampController {
    def springSecurityService
    AccessToken info
    String text
    def campaign() {
        println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
        Facebook facebook = (Facebook)session.getAttribute("facebook")
        String oauthCode = request.getParameter("code")

        try {
            facebook.getOAuthAccessToken(oauthCode)
        } catch (FacebookException e) {
            redirect(controller: 'fbLogout', action: 'logoutPage')
            /*throw new ServletException(e)*/
        }

        try {
            info = facebook.getOAuthAccessTokenInfo()
        } catch (FacebookException e) {
            e.printStackTrace()
        }
        text=info.toString();
        String[] firstSplit=text.split("token='")
        String[] secondSplit=firstSplit[1].split("'")

        def currentUser = springSecurityService.currentUser
        def id=currentUser.getId()

        def fbdata = new FacebookData(name: "FacebookData")

        def accessToken=secondSplit[0]//AccessToken
        fbdata.setAccessToken(accessToken)
        FacebookClient fbClient = new DefaultFacebookClient(accessToken);

        com.restfb.types.User fbuser = fbClient.fetchObject("me",com.restfb.types.User.class, Parameter.with("fields", "name,id"));
        def fb=FacebookData.list()

        int count=0;
        for(FacebookData fdata:fb){
            if(fdata.getFacebookId().equals(fbuser.getId()))
            {
                if(fdata.userId==id)
                    count++
            }
        }
        if(count==0){
            fbdata.setFacebookName(fbuser.getName())
            fbdata.setFacebookId(fbuser.getId())
            currentUser.addToFacebookData(fbdata)
            fbdata.save(flush: true)
        }
        //render (view: 'campaign', model:[username:name ])
        redirect(controller: 'camp', action: 'campaignPage')
    }
    def campaignPage(){
        def currentUser = springSecurityService.currentUser
        def name=currentUser.getUsername()
        render (view: 'campaign', model:[username:name ])
        //render view: 'campaign'
    }
}
       /* fbData.accessToken=secondSplit[0]//AccessToken
        println "AccessToken : "+fbData.accessToken
        FacebookClient fbClient = new DefaultFacebookClient(fbData.accessToken);

        User fbuser = fbClient.fetchObject("me",User.class, Parameter.with("fields", "name,id"));
        fbdata.set
        fbData.fbName = fbuser.getName()
        fbData.fbId = fbuser.getId()
        println("Fb Name : "+fbData.fbName)
        println("Fb Id : "+fbData.fbId)
        user.addToFacebookData(fbData)
*/









        /*AccessToken info
        println("******"+facebook)
        try {
            String oauthCode = params.get("code")
            try {
                info = facebook.getOAuthAccessToken(oauthCode);
            } catch (FacebookException e) {
                throw new ServletException(e);
            }

            println("OAuthAccessToken : "+info);
        } catch (FacebookException e) {
            e.printStackTrace();
        }
        text=info.toString();
        println("OAUTH ACCESSTOKEN : "+text);
        String[] firstSplit=text.split("token='");
        String[] secondSplit=firstSplit[1].split("'");
        //Access Token is secondSplit[0]
        println("AccessToken : "+secondSplit[0]);*/
       // render view: 'campaign'
    /*    redirect(controller: 'camp', action: 'campaignPage')
    }

    def campaignPage(){
        render view: 'campaign'
    }
}*/
