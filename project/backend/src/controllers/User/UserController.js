const service = require("@/db_services/User/UserService.js");

async function UserLoginConfirmation(req, res) {
    const { email, password } = req.body;
    const user = await service.UserLoginConfirmation(email, password);

    if (user) {
        res.status(200).json({ message: "Login successful", user });
    } else {
        res.status(401).json({ message: "Invalid email or password" });
    }
}

async function DisplayUser(req, res) {
    const UserName = await service.GetSpecificUser(req.params.UserId);

    res.send(UserName);
}

async function DisplayALLUser(req, res) {
    const AllUserName = await service.GetAllUser();

    res.send(AllUserName);
}

async function CreateUser(req, res) {
    await service.CreateUser(req.body);

    res.status(201).send(`create successfully`);
}

async function UpdateUser(req, res) {
    await service.UpdateUser(req.body, req.params.UserId);

    res.status(201).send(`update successfully`);
}

async function DeleteUser(req, res) {
    const result = await service.DeleteUser(req.params.UserId);

    if(result == 0){
        res.status(404).send(`no set with ID: ${req.params.UserId}`);
    }else{
        res.send(`delete successfully, affected rows: ${result}`);
    }
}


module.exports = {
    UserLoginConfirmation,
    DisplayUser,
    DisplayALLUser,
    CreateUser,
    UpdateUser,
    DeleteUser,
};