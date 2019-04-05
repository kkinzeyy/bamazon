
const searchUser = () => {

    return {
        username: 'kyle',
        age: 26
    };
}

const newUser = searchUser(); //

const brandNewUser = { newUser };

log("brand new user", brandNewUser)