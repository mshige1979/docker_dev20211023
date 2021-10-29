-- データベースの作成
CREATE DATABASE sample1_dev;
CREATE DATABASE sample1_staging;
CREATE DATABASE sample1_test;
CREATE DATABASE sample1_prod;

-- PostGISの拡張機能
\c sample1_dev;
CREATE EXTENSION IF NOT EXISTS postgis CASCADE;

\c sample1_staging;
CREATE EXTENSION IF NOT EXISTS postgis CASCADE;

\c sample1_test;
CREATE EXTENSION IF NOT EXISTS postgis CASCADE;

\c sample1_prod;
CREATE EXTENSION IF NOT EXISTS postgis CASCADE;
