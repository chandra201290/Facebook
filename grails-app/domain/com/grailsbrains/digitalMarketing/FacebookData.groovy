package com.grailsbrains.digitalMarketing

import com.grailsbrains.Auth.User

class FacebookData {
    String facebookName
    String facebookId
    String accessToken

    static belongsTo = [user: User]
    static hasMany = [campaignDetails : CampaignDetails]

    static constraints = {
        facebookName(nullable: true, blank: false)
        facebookId(nullable: true, blank: false)
        accessToken(nullable: true, blank: false)
    }
}
