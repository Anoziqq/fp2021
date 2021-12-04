-- Лабораторна робота №4
-- студента групи АнД-31
-- Лаврія Руслана
-- Варіант №6
-- Мета: Ознайомитись з системою типiв та класiв типiв. Набути досвiду визначення нових типiв та класiв типiв i їх використання.

-- Завдання. Публiкацiї. Зберiгаються данi про публiкацiї, якi можуть бути книгою (автор/спiвавтори, назва, мiсто, 
-- видавництво, рiк), статтею (автор/спiвавтори, назва статтi, назва журналу, рiк, номер журналу, сторiнки) або тезами доповiдi 
-- (автор/спiвавтори, назва доповiдi, назва конференцiї, мiсто, рiк, сторiнки). Визначне функцiї для
-- 6) визначення чи є публiкацiя з певною назвою книгою, статтею або тезами;
data Publish = Publish String String Int String
authorOfPublish (Publish author _ _ _) = author
titleOfPublish (Publish _ title _ _) = title
yearOfPublish (Publish _ _ year _) = year
typeOfPublish (Publish _ _ _ tupe) = tupe
publish = [(Publish "Stephen King" "Under the Dome" 2000 "Book"), (Publish "Stephen Hawking" "Black hole" 2019 "Article"), (Publish "Those Awesome" "Move or Die" 2016 "Thesis")]
checkType _ [] = []
checkType title (x : xs) = if title == titleOfPublish x then typeOfPublish x else checkType title xs
checkTitle title = [checkType title publish]

-- checkTitle "Under the Dome"
--["Book"]
