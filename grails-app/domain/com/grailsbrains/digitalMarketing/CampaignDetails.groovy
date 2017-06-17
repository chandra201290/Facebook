package com.grailsbrains.digitalMarketing

class CampaignDetails {

    static belongsTo = FacebookData
    static hasMany = [facebookData : FacebookData]

    String campaignName
    String campaignTitle
    String campaignLink
    String campaignMessage
    String campaignUrl
    Byte[] mediaFile
    String mediaName
    String mediaType


    static constraints = {
        campaignName(nullable: true, blank: false)
        campaignTitle(nullable: true, blank: false)
        campaignLink(nullable: true, blank: false)
        campaignMessage(nullable: true, blank: false)
        mediaFile(nullable: true, blank: false)
        campaignUrl(nullable: true, blank: false)
        mediaType(nullable: true, blank: false)
        mediaName(nullable: true, blank: false)

    }
    static mapping = {
        mediaFile sqlType: 'longblob'
    }

}