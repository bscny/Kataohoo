USE `kataohoot`;
-- 插入 User 資料
INSERT INTO user (Name, Email, Password) VALUES
('Michael', 'haynesdarrell@example.com', '4%2Rw2uJz*'),
('Deanna', 'fvargas@example.net', 'Yu+$9AlhXG'),
('George', 'zcain@example.net', 'l5zQs0H7$M'),
('Brian', 'pcollier@example.org', '*OBP6GjI9e'),
('Rachel', 'christina12@example.net', '$uV8oxpuT3'),
('Patrick', 'yallen@example.net', '+Vx^i5Gn47'),
('Melissa', 'cruzwilliam@example.org', '!hYdQzp@50'),
('Lauren', 'doyleleslie@example.com', 'i&9AEK1J^m'),
('Michelle', 'jaywilson@example.org', 'u+KSLXWb_2'),
('Christina', 'steven49@example.org', 'M$5FvUX9Dj'),
('Erin', 'harrellmatthew@example.net', '@1Pf7@9g+j'),
('Nicole', 'natashafarrell@example.net', 'X1T+#u*k*v'),
('Alexa', 'maureenscott@example.com', 'R)1JXT%yg9'),
('Michael', 'noah59@example.com', 'JaH*0YLoBB'),
('David', 'oliviapreston@example.org', '@1MvpZr89*');

-- 插入 Friendship 資料
INSERT INTO friendship (User1_id, User2_id) VALUES
(14, 2),
(9, 8),
(1, 14),
(1, 6),
(5, 1),
(5, 6),
(7, 10),
(14, 4),
(10, 13),
(1, 3),
(14, 7),
(15, 10),
(13, 5),
(7, 5),
(13, 8),
(15, 7),
(12, 8),
(7, 4),
(14, 6),
(3, 4);

-- 插入 Folder 資料
INSERT INTO folder (Folder_name, User_id, Parent_folder_id) VALUES
('Receive Folder', 8, NULL),
('Give Folder', 11, NULL),
('Huge Folder', 9, 2),
('Who Folder', 8, NULL),
('Hour Folder', 7, NULL),
('Thank Folder', 4, 3),
('Wrong Folder', 15, 1),
('I Folder', 7, NULL),
('Those Folder', 13, 5),
('Value Folder', 2, 8),
('According Folder', 6, NULL),
('Order Folder', 12, NULL),
('Talk Folder', 2, NULL),
('Southern Folder', 1, 13),
('Message Folder', 11, 10),
('Arrive Folder', 2, 8),
('Friend Folder', 12, 14),
('Last Folder', 4, 13),
('Question Folder', 14, 10),
('Daughter Folder', 13, NULL);

-- 插入 Quiz 資料
INSERT INTO quiz (Quiz_name, Is_public, Folder_id, Quiz_description) VALUES
('And Quiz', True, 12, 'Themselves yeah service life record hard.'),
('Factor Quiz', True, 5, 'Office they despite attention base society.'),
('Window Quiz', False, 17, 'Stand notice go particular or.'),
('Brother Quiz', False, 8, 'Result carry commercial.'),
('Window Quiz', False, 6, 'Range five response write choose successful.'),
('Air Quiz', True, 12, 'Fight provide very guess move language you.'),
('Dream Quiz', False, 12, 'Often about staff attack allow.'),
('Away Quiz', False, 17, 'Have main collection less hundred question.'),
('Almost Quiz', False, 6, 'Voice red resource cell PM upon expect follow.'),
('Party Quiz', False, 17, 'Public hard affect shoulder line line senior close.'),
('Expect Quiz', True, 18, 'Describe fast face glass.'),
('Indeed Quiz', False, 5, 'Meeting power right role.'),
('Look Quiz', True, 20, 'Argue interview at.'),
('Rate Quiz', True, 12, 'Cell pretty thought since city off white peace.'),
('Early Quiz', False, 10, 'Physical sometimes garden ago experience music.'),
('Day Quiz', True, 7, 'Day appear staff the building.'),
('Themselves Quiz', False, 12, 'Form news college simply ok thank.'),
('Century Quiz', False, 20, 'Pretty thousand if.'),
('Walk Quiz', False, 20, 'From who standard some garden.'),
('Maintain Quiz', False, 19, 'Plant style follow mission business tonight between.');

-- 插入 Quiz_record 資料
INSERT INTO quiz_record (Total_points, User_id, Quiz_id) VALUES
(95, 4, 4),
(99, 1, 9),
(81, 8, 1),
(95, 15, 18),
(80, 10, 3);

-- 插入 Fill_blank_question 資料
INSERT INTO fill_blank_question (Body, Q_number, Answer, Points, Quiz_id) VALUES
('Around walk suddenly since success process.', 1, 'to', 14, 17),
('Dark help ability military force.', 2, 'close', 10, 2),
('Whom meet main through money.', 3, 'white', 14, 1),
('Simple likely value home necessary.', 4, 'rather', 20, 2),
('Value any film administration whom subject wish.', 5, 'say', 12, 11),
('Option form throughout skill huge exactly.', 6, 'class', 9, 3),
('Relationship wait among catch though star.', 7, 'indicate', 17, 20),
('Themselves structure address.', 8, 'fund', 5, 4),
('Simple run blue test each month myself.', 9, 'bit', 11, 14),
('Night partner officer listen stay matter.', 10, 'audience', 7, 19),
('Show five individual anyone price decision.', 11, 'for', 16, 12),
('Performance police every short travel.', 12, 'power', 5, 15),
('Seven sound tonight.', 13, 'worker', 8, 11),
('Guess may series those floor speech middle.', 14, 'alone', 16, 16),
('Such next form into.', 15, 'visit', 13, 15),
('Particularly agreement over world.', 16, 'identify', 9, 3),
('Cultural describe herself finally yeah project.', 17, 'against', 11, 1),
('Price go themselves appear body blue argue but.', 18, 'painting', 16, 2),
('Trial each decide detail reality.', 19, 'story', 9, 3),
('Activity I mother Mr short for voice.', 20, 'town', 9, 14),
('Trade drive bank.', 21, 'soldier', 19, 18),
('Tend whose worry past.', 22, 'save', 16, 18),
('Loss add western people leg current security recent.', 23, 'while', 19, 16),
('Certain bring relate account than industry growth.', 24, 'might', 15, 13),
('Campaign best then total law ahead.', 25, 'certain', 7, 19),
('Admit establish listen international.', 26, 'traditional', 17, 15),
('Happy direction particularly both.', 27, 'indicate', 10, 6),
('Mean weight rule player beautiful as speak condition.', 28, 'game', 14, 15),
('This collection hospital.', 29, 'him', 16, 18),
('Practice fill begin answer leader whom imagine those.', 30, 'less', 14, 17),
('Better water more anything large million.', 31, 'give', 8, 20),
('Each participant ago cup today law through.', 32, 'rise', 12, 14),
('Quality eight no rather old chance fall.', 33, 'my', 18, 13),
('Lose according heavy work.', 34, 'the', 20, 16),
('Edge upon say fear laugh easy stand occur.', 35, 'talk', 20, 11),
('Edge movie wrong.', 36, 'something', 11, 2),
('Thing sometimes firm position.', 37, 'attention', 5, 14),
('Eat difficult agree show tree special recent.', 38, 'suffer', 14, 5),
('Forget history note.', 39, 'president', 8, 14),
('Board apply success training build.', 40, 'apply', 13, 3);

-- 插入 Single_open_question 資料
INSERT INTO single_open_question (Q_number, Body, Points, Answer, OptionA, OptionB, OptionC, Quiz_id) VALUES
(1, 'Music from like interest cup woman.', 20, 'attorney', 'another', 'senior', 'culture', 20),
(2, 'More right yes high anything international.', 8, 'various', 'commercial', 'democratic', 'mean', 10),
(3, 'Seat which north teach.', 11, 'blood', 'interview', 'within', 'good', 13),
(4, 'Different north choose cover anything issue.', 18, 'court', 'glass', 'continue', 'grow', 10),
(5, 'Message account Congress ball.', 9, 'project', 'past', 'front', 'put', 18),
(6, 'Want throw example.', 13, 'perhaps', 'perform', 'speak', 'way', 20),
(7, 'Production field focus majority economic.', 16, 'suggest', 'boy', 'take', 'three', 9),
(8, 'Whom individual court.', 7, 'short', 'laugh', 'bring', 'meeting', 10),
(9, 'Beat meeting room truth.', 20, 'own', 'level', 'benefit', 'leader', 1),
(10, 'Recently continue power.', 15, 'part', 'suggest', 'continue', 'rock', 9),
(11, 'Drop kitchen information former prevent heart us.', 9, 'article', 'energy', 'accept', 'suddenly', 15),
(12, 'Stock source nearly character say citizen.', 12, 'appear', 'very', 'democratic', 'fact', 20),
(13, 'Worry theory low always home employee.', 16, 'begin', 'religious', 'lot', 'head', 6),
(14, 'Fight we team suddenly.', 9, 'stage', 'mind', 'everyone', 'begin', 9),
(15, 'Note whose each Democrat listen information beat.', 19, 'red', 'of', 'surface', 'manage', 10),
(16, 'Former teach break whom effort.', 18, 'water', 'Mr', 'role', 'what', 20),
(17, 'Movement thought door expert order writer.', 6, 'see', 'lay', 'prepare', 'wear', 15),
(18, 'Person that modern whether though cup.', 12, 'major', 'create', 'natural', 'stop', 14),
(19, 'Begin later important crime alone there.', 8, 'speech', 'college', 'discussion', 'example', 13),
(20, 'On speech music born.', 17, 'relationship', 'top', 'commercial', 'reason', 18),
(21, 'Lawyer leave close side sell professional.', 15, 'must', 'green', 'American', 'by', 15),
(22, 'Research do significant instead church none concern.', 19, 'push', 'week', 'own', 'message', 17),
(23, 'Office interview public town behavior detail.', 15, 'become', 'method', 'will', 'attorney', 15),
(24, 'Pass any phone as develop available get.', 13, 'model', 'speak', 'scientist', 'several', 17),
(25, 'Meet agency position draw.', 10, 'need', 'worry', 'three', 'positive', 7),
(26, 'Effect stand recognize modern.', 10, 'share', 'common', 'lay', 'face', 18),
(27, 'She agency network.', 17, 'enough', 'recognize', 'significant', 'bag', 20),
(28, 'Discussion bit senior opportunity pay skin phone.', 7, 'myself', 'between', 'politics', 'have', 17),
(29, 'Total add line kitchen service last.', 10, 'return', 'life', 'owner', 'first', 15),
(30, 'Teacher Democrat city country west.', 20, 'identify', 'also', 'environmental', 'season', 12),
(31, 'Use surface soldier.', 14, 'test', 'happen', 'all', 'add', 8),
(32, 'Despite bar friend range surface discussion friend.', 17, 'type', 'husband', 'various', 'strong', 6),
(33, 'Record guess adult picture couple learn traditional.', 5, 'lose', 'north', 'approach', 'hand', 11),
(34, 'Lay address local.', 6, 'action', 'cup', 'source', 'fly', 12),
(35, 'Field detail several court firm certainly mouth.', 15, 'how', 'north', 'without', 'truth', 11),
(36, 'Movement including nation let.', 6, 'conference', 'summer', 'must', 'none', 8),
(37, 'Family magazine any company foot.', 6, 'similar', 'language', 'among', 'tend', 18),
(38, 'Military rather finish watch.', 19, 'skill', 'score', 'quite', 'career', 8),
(39, 'Its deep structure.', 5, 'help', 'east', 'training', 'home', 19),
(40, 'Maybe law vote.', 12, 'up', 'wrong', 'again', 'after', 19);

-- 插入 TF_question 資料
INSERT INTO tf_question (Body, Answer, Points, Q_number, Quiz_id) VALUES
('Partner summer stuff.', False, 13, 1, 4),
('Ten term seem opportunity organization help billion.', True, 12, 2, 12),
('Apply himself woman change step paper want.', False, 18, 3, 18),
('Page several strong television majority else mind.', True, 7, 4, 14),
('Message whose various bar make order water.', True, 12, 5, 6),
('Far let figure image play table.', True, 11, 6, 3),
('Participant person music base.', True, 9, 7, 17),
('Long thought success lot player agency.', False, 19, 8, 16),
('Program most short do building might.', True, 19, 9, 5),
('Marriage drop actually everybody.', True, 18, 10, 14),
('Bit professor population read lot.', False, 16, 11, 19),
('Production allow both every just your.', False, 18, 12, 17),
('Court pattern security imagine test Democrat option.', True, 14, 13, 6),
('Toward second above let who floor suddenly.', True, 18, 14, 18),
('Population level half choose one.', True, 18, 15, 12),
('Chair investment space coach great black.', False, 20, 16, 8),
('Eat really box what where.', True, 6, 17, 15),
('Age while degree particularly.', True, 10, 18, 17),
('Beyond usually car discussion hear start.', True, 11, 19, 5),
('Include job sing soldier while cell.', False, 16, 20, 4),
('Smile stay call mouth election point.', True, 8, 21, 10),
('Eat what for.', False, 6, 22, 8),
('Range paper medical economic discussion.', False, 16, 23, 1),
('Decide probably surface worry kind some continue.', True, 9, 24, 14),
('Black plant talk mention stock.', False, 20, 25, 20),
('Cultural determine significant realize girl national.', False, 11, 26, 1),
('End fill as site address.', True, 12, 27, 2),
('Walk prove government.', False, 8, 28, 8),
('Street property behind.', True, 18, 29, 13),
('Past enter card create.', False, 15, 30, 12),
('Suddenly pattern sound other idea professional.', False, 10, 31, 19),
('Authority agency organization society manage.', False, 6, 32, 3),
('Point court will radio place first.', True, 20, 33, 7),
('Arrive when size reach cultural officer inside.', True, 19, 34, 13),
('Face show herself eat.', False, 17, 35, 12),
('Change manage common until for no.', False, 14, 36, 5),
('Issue book training could arm.', True, 8, 37, 17),
('Accept manager since choose run someone hope.', False, 15, 38, 8),
('Ago herself eye theory everything generation easy matter.', True, 9, 39, 10),
('Long better democratic itself loss between guess.', True, 17, 40, 2),
('Arm about pull member key main own woman.', False, 6, 41, 18),
('Here nation must character form to less.', False, 18, 42, 14),
('Our test interview call not.', False, 20, 43, 18),
('Fish call worry federal.', True, 5, 44, 7),
('Town offer gas society worker fly call.', False, 19, 45, 10),
('Six its old traditional tend open Mr interest.', True, 14, 46, 9),
('Meeting serious wife crime economy scientist moment.', True, 17, 47, 18),
('Hear fact deep computer another energy.', True, 7, 48, 8),
('Cut likely rich military.', False, 17, 49, 17),
('Practice soon your.', False, 19, 50, 20),
('Civil require party serious thousand already with service.', False, 20, 51, 12),
('Glass yard up century.', False, 6, 52, 7),
('Pm type concern win imagine maybe her may.', True, 11, 53, 15),
('Tonight spring industry benefit family thought series purpose.', False, 10, 54, 7),
('Beautiful knowledge bit other red.', False, 9, 55, 18),
('Six sometimes during.', False, 18, 56, 4),
('Beat black age necessary her.', False, 6, 57, 4),
('Address do ago performance.', True, 20, 58, 6),
('Music section yes board.', True, 8, 59, 5),
('Explain understand what dream hand summer picture.', True, 20, 60, 9),
('Ago physical alone run station.', True, 11, 61, 11),
('Light network quite remain enough month bit simply.', True, 16, 62, 2),
('Fund play movie left.', False, 19, 63, 19),
('Two stand current Republican.', True, 10, 64, 17),
('Woman few leader the describe blue usually Republican.', False, 16, 65, 16),
('Recognize without beat chance order develop produce.', False, 17, 66, 11),
('Own in movie level marriage store page public.', True, 19, 67, 3),
('Defense turn decide any research office provide now.', False, 19, 68, 4),
('Doctor reveal wonder off.', True, 16, 69, 4),
('Education similar customer direction wide.', True, 11, 70, 7),
('Bill general impact no newspaper.', True, 6, 71, 20),
('Six large respond address Mr movie how.', True, 14, 72, 4),
('Treatment risk these home discuss sort reach exist.', False, 16, 73, 2),
('Best yard maybe relate.', False, 11, 74, 14),
('Fish look tend every movie director peace.', False, 20, 75, 17),
('By teacher bad partner.', False, 6, 76, 5),
('Develop chance fast street know production.', True, 15, 77, 2),
('Son poor stage speak quality.', False, 18, 78, 20),
('Even while capital interest.', False, 17, 79, 20),
('Magazine thought pay mind us yes.', True, 7, 80, 15),
('Cause little involve training.', True, 6, 81, 20),
('Build because politics moment ability maintain end.', True, 14, 82, 14),
('Such change sell federal size station account.', False, 9, 83, 15),
('Few enjoy defense quickly.', True, 10, 84, 2),
('Remain national agency question make.', True, 14, 85, 20),
('Cold child place sense understand old.', False, 8, 86, 3),
('Though size fine choose win agency.', False, 5, 87, 5),
('Ability analysis a thus service.', True, 19, 88, 16),
('Require stand direction generation begin current more.', True, 20, 89, 3),
('Media think record Mrs.', False, 13, 90, 13),
('Leave because American return.', True, 13, 91, 9),
('Easy decide society you.', True, 11, 92, 7),
('Population certainly word direction collection stock room.', False, 20, 93, 1),
('Commercial with news six customer.', True, 18, 94, 1),
('General material open recent night.', True, 12, 95, 10),
('Response standard value thought mouth.', True, 15, 96, 9),
('Process ago collection similar despite former.', False, 14, 97, 17),
('Magazine according final really.', False, 6, 98, 16),
('Off serve half sure.', True, 17, 99, 4),
('Win step side make.', True, 6, 100, 3),
('Community check experience night he.', False, 12, 101, 18),
('Happy old order watch quality gas room.', False, 14, 102, 12),
('Program social try operation how.', False, 11, 103, 18),
('Hear fine customer writer coach able.', False, 10, 104, 16),
('Body piece eat wind site staff health.', True, 17, 105, 19),
('Role hold many simple.', True, 16, 106, 18),
('About student view entire.', True, 20, 107, 1),
('All not store they lose effort pay.', False, 8, 108, 16),
('Start by stage carry age term probably.', False, 11, 109, 6),
('Piece network data first.', True, 5, 110, 14),
('Hundred pass interest deep responsibility.', False, 20, 111, 14),
('Process view give toward yet practice.', False, 12, 112, 15),
('People sister thank true.', False, 14, 113, 2),
('Approach necessary late song.', False, 9, 114, 3),
('Act staff spring after tonight suddenly.', False, 20, 115, 12),
('Increase pattern and drive big great success.', False, 14, 116, 19),
('Base them produce year.', True, 6, 117, 19),
('Light window dream produce establish memory.', True, 8, 118, 19),
('You a Democrat military I laugh call.', True, 19, 119, 15),
('Customer gas baby resource.', False, 8, 120, 5),
('Fast shoulder wind for behavior job catch.', False, 7, 121, 20),
('Site safe design provide growth statement.', True, 11, 122, 6),
('Him leave father maybe recent break.', True, 14, 123, 3),
('Friend speech house fill.', True, 18, 124, 15),
('Voice site senior set very girl.', False, 11, 125, 20),
('Effort example watch wait.', False, 12, 126, 1),
('Cold low throughout per claim deep.', False, 10, 127, 12),
('Student kitchen human everybody consider.', True, 10, 128, 19),
('As shake along five three.', True, 9, 129, 13),
('Foot foreign manage throughout offer simple bag.', True, 9, 130, 1),
('Ago feel summer job hair thousand score bill.', False, 9, 131, 2),
('Agency bit position head purpose population.', True, 6, 132, 12),
('Son recent behind quality late.', False, 13, 133, 7),
('Daughter company white detail rate.', True, 14, 134, 18),
('Station eye sell.', False, 14, 135, 8),
('Appear wall call.', True, 5, 136, 10),
('Opportunity rate something begin prevent.', True, 13, 137, 1),
('Senior me structure.', True, 16, 138, 20),
('Claim from keep American author.', True, 13, 139, 12),
('Record mother future scene positive common employee.', False, 15, 140, 17),
('Model space choice use piece street.', True, 17, 141, 8),
('Agent final simply politics last.', False, 8, 142, 8),
('Describe after might board.', False, 15, 143, 15),
('Model interest night grow south cold.', False, 18, 144, 17),
('Learn hour set company law magazine.', False, 5, 145, 20),
('Seem spend step class.', False, 6, 146, 15),
('Beyond bad person quite.', True, 5, 147, 20),
('Box guess official bed someone follow.', False, 15, 148, 4),
('Not lead sometimes night rate.', True, 9, 149, 2),
('Brother successful assume eye probably message throughout.', False, 5, 150, 11);

-- 插入 FB_quiz_determination 資料
INSERT INTO fb_quiz_determination (FB_id, Record_id, Is_correct) VALUES
(27, 1, True),
(29, 4, False),
(13, 2, False),
(23, 4, False),
(27, 3, False);

-- 插入 SO_quiz_determination 資料
INSERT INTO so_quiz_determination (SO_id, Record_id, Is_correct) VALUES
(22, 2, False),
(7, 2, False),
(14, 4, False),
(34, 2, True),
(21, 4, True);

-- 插入 TF_quiz_determination 資料
INSERT INTO tf_quiz_determination (TF_id, Record_id, Is_correct) VALUES
(3, 3, False),
(72, 1, True),
(20, 5, True),
(116, 2, True),
(46, 4, True);

