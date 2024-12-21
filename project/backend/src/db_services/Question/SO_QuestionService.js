const db = require('@/database.js');

// read services
async function GetAllSOQuestion() {
    const [records] = await db.query(`SELECT * FROM single_open_question`);
    return records;
}

async function GetSpecificSOQuestion(QuestionId) {
    const [records] = await db.query(`SELECT * FROM single_open_question WHERE so_id = ?`, [QuestionId]);
    return records;
}

async function GetSpecificQuizSOQuestion(QuizId) {
    const [records] = await db.query(`SELECT * FROM single_open_question WHERE Quiz_Id = ?`, [QuizId]);
    return records;
}

// create services
async function CreateSOQuestion(QuestionData) {
    const { Q_number, Body, Points, Answer, OptionA, OptionB, OptionC, Quiz_id } = QuestionData;
    const result = await db.query(`INSERT INTO single_open_question (Q_number, Body, Points, Answer, OptionA, OptionB, OptionC, Quiz_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?)`, [Q_number, Body, Points, Answer, OptionA, OptionB, OptionC, Quiz_id]);
    return result.insertId;
}

// update services
async function UpdateSOQuestion(QuestionData, QuestionId) {
    const { Q_number, Body, Points, Answer, OptionA, OptionB, OptionC } = QuestionData;
    await db.query(`UPDATE single_open_question SET Q_number = ?, Body = ?, Points = ?, Answer = ?, OptionA = ?, OptionB = ?, OptionC = ? WHERE so_id = ?`, [Q_number, Body, Points, Answer, OptionA, OptionB, OptionC, QuestionId]);
}

// delete services
async function DeleteSOQuestion(QuestionId) {
    const [result] = await db.query(`DELETE FROM single_open_question WHERE so_id = ?`, [QuestionId]);
    return result;
}

module.exports = {
    GetAllSOQuestion,
    GetSpecificSOQuestion,
    GetSpecificQuizSOQuestion,
    CreateSOQuestion,
    UpdateSOQuestion,
    DeleteSOQuestion,
};