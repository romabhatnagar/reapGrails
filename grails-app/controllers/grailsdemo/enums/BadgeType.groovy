package grailsdemo.enums

enum BadgeType {
    SILVER("SILVER"), GOLD("GOLD"), BRONZE("BRONZE")
    String value

    BadgeType(String value) {
        this.value = value
    }

}