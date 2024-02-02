SELECT * FROM yt.youtube;

#Top Channels by Subscribers and Views
SELECT Youtuber, subscribers, `video views`
FROM yt.youtube
ORDER BY subscribers DESC, `video views` DESC
LIMIT 10;

# Popularity of Channels in Different Countries
SELECT Country, COUNT(*) AS total_channels, SUM(subscribers) AS total_subscribers
FROM yt.youtube
GROUP BY Country
ORDER BY total_subscribers DESC;

#Dominant Categories in Different Countries
SELECT Country, category, COUNT(*) AS total_channels
FROM yt.youtube
GROUP BY Country, category
ORDER BY Country, total_channels DESC;

#Average Subscribers and Video Views by Country
SELECT Country, AVG(subscribers) AS average_subscribers, AVG(`video views`) AS average_video_views
FROM yt.youtube
GROUP BY Country
ORDER BY average_subscribers DESC, average_video_views DESC;

#Comparison of Number of Uploaded Videos Across Categories
SELECT category, AVG(uploads) AS average_uploads
FROM yt.youtube
GROUP BY category
ORDER BY average_uploads DESC;

#Subscriber Growth Over Time for Top YouTubers
SELECT Youtuber, created_year, SUM(subscribers) AS total_subscribers
FROM yt.youtube
GROUP BY Youtuber, created_year
ORDER BY Youtuber, created_year;

#Top Channels by Average Views per Upload
SELECT Youtuber, AVG(`video views` / uploads) AS avg_views_per_upload
FROM yt.youtube
GROUP BY Youtuber
ORDER BY avg_views_per_upload DESC
LIMIT 10;

#Average Subscribers and Video Views by Country and Year
SELECT 
    Country, 
    created_year, 
    AVG(subscribers) AS average_subscribers, 
    AVG(`video views`) AS average_video_views
FROM 
    yt.youtube
GROUP BY 
    Country, 
    created_year
ORDER BY 
    average_subscribers DESC, 
    average_video_views DESC;











