1. SELECT app_name FROM analytics WHERE id=1880;
        app_name
-------------------------
 Web Browser for Android
(1 row)

2. SELECT id, app_name FROM analytics WHERE last_updated = '2018-08-01';


3. SELECT DISTINCT(genres), COUNT(app_name) FROM analytics GROUP BY genres;

4.SELECT app_name, reviews FROM analytics LIMIT 5;
                 app_name                 | reviews
------------------------------------------+----------
 Facebook                                 | 78158306
 WhatsApp Messenger                       | 78128208
 Instagram                                | 69119316
 Messenger – Text and Video Chat for Free | 69119316
 Clash of Clans                           | 69109672
(5 rows)

5.SELECT app_name, reviews FROM analytics WHERE rating >= 4.8 LIMIT 1;
  app_name  | reviews
------------+---------
 Chess Free | 4559407
(1 row)

6.SELECT category, AVG(rating) FROM analytics GROUP BY category ORDER BY avg DESC;

7.SELECT app_name, price, rating FROM analytics WHERE rating<3 ORDER BY price DESC LIMIT 1;
      app_name      | price  | rating
--------------------+--------+--------
 Naruto & Boruto FR | 379.99 |    2.9
(1 row)

8.SELECT app_name FROM analytics WHERE min_installs<50 AND rating>0 ORDER BY rating DESC;
                    app_name
------------------------------------------------
 Radio FG Paris Underground
 My CW
 Q Actions - Digital Assistant
 AQ: First Contact
 AQ wisdom +
 British Columbia Transit Info
 HR Team CQ Region Ed Qld
 db Meter - sound level meter with data logging
 Otto DM
 DM Adventure
 FK Events
 BTK-FH Online Campus
 Popsicle Launcher for Android P 9.0 launcher
 DT CLOTHINGS
 CY Spray nozzle
 DY Fitness
 Miller’s Bar B-Q
 Custos F.O.
 Ec Solutions Mobile
 Ek IRA
 EC-Contractors
 F-1 watchface by Delta
(22 rows)

9.SELECT app_name FROM analytics WHERE rating<3 AND reviews>=10000;
                    app_name
-------------------------------------------------
 The Wall Street Journal: Business & Market News
 Vikings: an Archer’s Journey
 Shoot Em Down Free
(3 rows)

10.SELECT app_name, price, reviews FROM analytics WHERE price >=.10 AND price<=1 ORDER BY rev
iews DESC LIMIT 10;
                  app_name                   | price | reviews
---------------------------------------------+-------+---------
 Free Slideshow Maker & Video Editor         |  0.99 |  408292
 Couple - Relationship App                   |  0.99 |   85468
 Anime X Wallpaper                           |  0.99 |   84114
 Dance On Mobile                             |  0.99 |   61264
 Marvel Unlimited                            |  0.99 |   58617
 FastMeet: Chat, Dating, Love                |  0.99 |   58614
 IHG®: Hotel Deals & Rewards                 |  0.99 |   48754
 Live Weather & Daily Local Weather Forecast |  0.99 |   38419
 DreamMapper                                 |  0.99 |   32496
 Můj T-Mobile Business                       |  0.99 |   32344
(10 rows)

11.SELECT app_name, last_updated FROM analytics ORDER BY last_updated ASC LIMIT 1;
  app_name  | last_updated
------------+--------------
 CP Clicker | 2010-05-21
(1 row)

12. SELECT app_name, price FROM analytics ORDER BY price DESC LIMIT 1;
      app_name      | price
--------------------+-------
 Cardi B Piano Game |   400
(1 row)

13. SELECT sum(reviews) FROM analytics;
    sum
------------
 4814575866
(1 row)

14.SELECT category FROM analytics GROUP BY category HAVING COUNT(*)>300;
    category
-----------------
 COMMUNICATION
 PHOTOGRAPHY
 GAME
 BUSINESS
 MEDICAL
 TOOLS
 LIFESTYLE
 PRODUCTIVITY
 PERSONALIZATION
 FINANCE
 SPORTS
 FAMILY
(12 rows)

15. SELECT app_name, reviews, min_installs, min_installs/reviews AS proportion FROM analytics
WHERE min_installs >=100000 ORDER BY proportion DESC LIMIT 1;
     app_name     | reviews | min_installs | proportion
------------------+---------+--------------+------------
 Kim Bu Youtuber? |      66 |     10000000 |     151515
(1 row)