-- Лабораторна робота №4: Типи і класи типів
-- Студента групи АнД-31
-- Савченка Владислава Максимовича
-- Варіант №10


--  Завдання: Зберiгаються данi про публiкацiї, якi можуть бути книгою (ав-
-- тор/спiвавтори, назва, мiсто, видавництво, рiк), статтею (автор/спiвавтори, на-
-- зва статтi, назва журналу, рiк, номер журналу, сторiнки) або тезами доповiдi
-- (автор/спiвавтори, назва доповiдi, назва конференцiї, мiсто, рiк, сторiнки).

-- Визначити функцiю для:
-- статистика публiкацiй автора — кiлькiсть, обсяг (у сторiнках), тип;


data Book = Book {
    author :: String,
    name :: String,
    city :: String,
    publisher :: String,
    year :: Int,
    pages :: Int
} | Article {
    author :: String,
    name :: String,
    journal_name :: String,
    year :: Int,
    journal_number :: Int,
    pages :: Int
} | Report{
    author :: String,
    name :: String,
    conference_name :: String,
    city :: String,
    year :: Int,
    pages :: Int
}


publications = [(Book "Author_1" "Book_1" "City_1" "Bloomsbury" 1997 1500),
  (Book "Author_2" "Book_2" "City_2" "YMCA Press" 1967 1200),
  (Book "Author_3" "Book_3" "City_3" "William Taylor" 1719 1400),
  (Article "Author_1" "Article_1" "city_4" 1956 95 34),
  (Article "Author_1" "Article_2" "city_2" 1986 82 57),
  (Article "Author_4" "Article_3" "city_3" 1993 43 54),
  (Report "Author_5" "Report_1" "Conference_1" "city_4" 2018 14),
  (Report "Author_2" "Report_2" "Conference_2" "city_2" 2005 61),
  (Report "Author_3" "Report_3" "Conference_3" "city_5" 1996 35)]


pubsByAuthor q_author (x : xs) = 
  if q_author == author x
    then 
      do print (name x)
         print (pages x)
         pubsByAuthor q_author xs 
    else pubsByAuthor q_author xs

sBA q_author = pubsByAuthor q_author publications