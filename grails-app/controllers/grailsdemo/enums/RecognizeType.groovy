package grailsdemo.enums

enum RecognizeType {
    GIVEN("GIVEN"), TAKEN("TAKEN")
    String value

    RecognizeType(String value) {
        this.value = value
    }

}