INSERT INTO sample_point(name,geom)
    VALUES ('point1',ST_GeomFromText('POINT(35.67 139.75)',4326));

INSERT INTO sample_line(name,geom)
    VALUES ('line1',ST_GeomFromText('LINESTRING(35.67 139.75,35.67 139.755,35.675 139.755 )',4326));

INSERT INTO sample_polygon(name,geom)
    VALUES ('polygon1',ST_GeomFromText('POLYGON((35.68 139.76,35.686 139.76,35.686 139.766,35.68 139.766 ,35.68 139.76 ))',4326));

SELECT ST_AsGeoJSON(geom)::json AS geometry
    FROM sample_point;

SELECT ST_AsGeoJSON(geom)::json AS geometry
    FROM sample_line;

SELECT ST_AsGeoJSON(geom)::json AS geometry
    FROM sample_polygon;
