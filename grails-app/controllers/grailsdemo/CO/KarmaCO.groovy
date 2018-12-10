package grailsdemo.CO

import grailsdemo.Badge

class KarmaCO {
    String givenTo
    String badgeType
    String karma
    String reason

    static constraints = {
        givenTo(nullable: false)
        badgeType(nullable: false)
        karma(nullable: false)
        reason(nullable: false)
    }
}
