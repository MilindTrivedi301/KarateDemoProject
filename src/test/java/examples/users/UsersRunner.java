package examples.users;

import com.intuit.karate.junit5.Karate;

class UsersRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("users").relativeTo(getClass());
    }    

    @Karate.Test
    Karate testUserDetaiKarate() {
        return Karate.run("userDetails").relativeTo(getClass());
    }

    @Karate.Test
    Karate HomePage() {
        return Karate.run("HomePage").relativeTo(getClass());
    }

}
