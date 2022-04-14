CREATE TABLE IF NOT EXISTS hacker_news(
  title TEXT,
  user TEXT,
  score TEXT,
  timestamp INT,
  url TEXT
);

INSERT INTO hacker_news(title,user,score,timestamp,url)
VALUES
  (" ","coldtree"," ","2014-01-27T17:31:13Z"," "),
  ("McConnelling","deepblueocean","2","2011-10-23T18:46:40Z","http://www.mcconnelling.org/"),
  ("A floating self-sustaining home that would respond to rising sea levels","tudorw","1","2012-11-19T11:54:38Z"," http://www.kickstarter.com/projects/whim/recycled-island"),
  ("What Ever Happened to Facebook's Rooms?","mirandak4","2","2016-11-04T13:55:30Z","https://backchannel.com/when-facebook-cleared-out-thousands-of-rooms-ee42a4154b33#.hpgimx9i1"),
  ("Epic Privacy Browser a more secure and private chromium-based web browser","sinak","1","2015-02-24T17:42:09Z","https://www.epicbrowser.com"),
  ("Ireland plans to make high-speed broadband a right for every citizen","ohjeez","2","2016-06-04T20:16:27Z","http://qz.com/699067/ireland-plans-to-make-high-speed-broadband-a-right-for-every-citizen/"),
  ("Lessons in i18n","quile","2","2010-12-16T18:27:09Z",""),
  ("Magic with Manticore","remx","1","2017-05-15T14:43:38Z 	","https://blog.trailofbits.com/2017/05/15/magic-with-manticore/"),
  ("LimeSDR.org low-cost open source app-enabled SDR coming soon","mectors","1","2016-04-13T12:33:15Z","https://www.crowdsupply.com/lime-micro/limesdr");


SELECT title, score
FROM hacker_news
ORDER BY score DESC
LIMIT 3;

SELECT SUM(score)
FROM hacker_news;


SELECT user, SUM(score)
FROM hacker_news
GROUP BY user
HAVING SUM(score) > 1
ORDER BY 2 DESC;