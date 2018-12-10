package grailsdemo.CO

class UserCO {
    String firstName
    String lastName
    String email
    String password
    String confirmPassword
//    MultipartFile image

    static constraints = {
//        importFrom User
        password(minSize: 5, maxSize: 10)
        firstName(nullable: false, minSize: 2, maxSize: 10)
        lastName(nullable: false, minSize: 1, maxSize: 10)
        confirmPassword(validator: { val, UserCO userCO ->
            if (val.equals(userCO.password)) return true
            else
                return false
        })
    }
}

