const db = require('@/database.js');

async function UserLoginConfirmation() {
    const [records] = await db.query(`SELECT * FROM user WHERE Email = ? AND Password = ?`, [email, password]);
    return records.length > 0 ? records[0] : null;
}
// read services
async function GetAllUser() {
    const [records] = await db.query(`SELECT * FROM user`);

    return records;
}

async function GetSpecificUser(UserId) {
    const [records] = await db.query(`SELECT * 
                                    FROM user 
                                    WHERE User_id = ?`, [UserId]);
    return records;
}

// create services
async function CreateUser(UserData) {
    const { Name, Email, Password } = UserData;
    const result = await db.query(`INSERT INTO user (Name, Email, Password) VALUES (?, ?, ?)`, [Name, Email, Password]);
    return result.insertId;
}

// update services
async function UpdateUser(UserData, UserId) {
    const { Name, Email, Password } = UserData;
    await db.query(`UPDATE user SET Name = ?, Email = ?, Password = ? WHERE User_id = ?`, [Name, Email, Password, UserId]);
}

// delete services
async function DeleteUser(UserId) {
    const [result] = await db.query(`DELETE FROM user WHERE User_id = ?`, [UserId]);
    return result.affectedRows;
}

module.exports = {
    UserLoginConfirmation,
    GetAllUser,
    GetSpecificUser,
    CreateUser,
    UpdateUser,
    DeleteUser,
};