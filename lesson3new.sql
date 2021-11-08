DROP TABLE IF EXISTS video_albums;
CREATE TABLE video_albums (
	id SERIAL UNIQUE,
	name varchar(255) DEFAULT NULL,
    user_id BIGINT UNSIGNED DEFAULT NULL,

    FOREIGN KEY (user_id) REFERENCES users(id)
);

DROP TABLE IF EXISTS video;
CREATE TABLE video (
	id SERIAL,
    user_id BIGINT UNSIGNED DEFAULT NULL,
    media_id BIGINT UNSIGNED NOT NULL,
    video_albums_id BIGINT UNSIGNED null,
    created_at DATETIME DEFAULT NOW(),
    
    FOREIGN KEY (video_albums_id) REFERENCES video_albums(id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (media_id) REFERENCES media(id)
);

DROP TABLE IF EXISTS news;
CREATE TABLE news (
	id SERIAL,
    communities_id BIGINT UNSIGNED DEFAULT NULL,
    media_id BIGINT UNSIGNED NOT NULL,
    created_at DATETIME DEFAULT NOW(),
    
    FOREIGN KEY (communities_id) REFERENCES communities(id),
    FOREIGN KEY (media_id) REFERENCES media(id)
);

DROP TABLE IF EXISTS ads;
CREATE TABLE ads (
	id SERIAL,
    user_id BIGINT UNSIGNED DEFAULT NULL,
    name varchar(255),
    created_at DATETIME DEFAULT NOW(),
    
    FOREIGN KEY (user_id) REFERENCES users(id)
);

DROP TABLE IF EXISTS clips;
CREATE TABLE clips (
	id SERIAL,
    user_id BIGINT UNSIGNED DEFAULT NULL,
    name varchar(255),
    created_at DATETIME DEFAULT NOW(),
    
    FOREIGN KEY (user_id) REFERENCES users(id)
);