--ETL Project 2
/*
Thalia Hansen
Chris Jordan
Ted Thompson
Robben Weems
*/

CREATE TABLE Weather
(
    MountainPeak VARCHAR(50) PRIMARY KEY,
    Latitude VARCHAR(50) NOT NULL,
    Longitude VARCHAR(50) NOT NULL,
    TempMax VARCHAR NOT NULL,
    TempMin VARCHAR NOT NULL,
    Snow VARCHAR   NOT NULL,
    WindSpeed VARCHAR(50) NOT NULL,
    Clouds VARCHAR NOT NULL
);
CREATE TABLE Mountain
(
    MountainPeak VARCHAR(50) NOT NULL,
    Latitude VARCHAR(50) NOT NULL,
    Longitude VARCHAR(50) NOT NULL,
    Photo VARCHAR(500) NOT NULL,
    Elevation VARCHAR NOT NULL,
    Promenance VARCHAR(50) NOT NULL,
    Difficulty VARCHAR(50) NOT NULL,
    StandardRoute VARCHAR (50) NOT NULL,
    Distance VARCHAR(50) NOT NULL,
    ElevationGain VARCHAR NOT NULL,
    FOREIGN KEY (MountainPeak) REFERENCES Weather(MountainPeak)
);


--SELECT * FROM Mountain

SELECT
    m.MountainPeak
    ,w.WindSpeed
    ,w.Clouds

FROM
    mountain m
    JOIN Weather w ON w.MountainPeak = m.MountainPeak