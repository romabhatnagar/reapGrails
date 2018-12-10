package grailsdemo.enums

enum RoleType {
    USER("USER"), ADMIN("ADMIN"), Supervisor("Supervisor"), PracticeHead("PracticeHead")
    String value

    RoleType(String value) {
        this.value = value
    }
}