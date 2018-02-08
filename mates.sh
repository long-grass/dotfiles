sqlite3 ~/Library/Application\ Support/Dock/desktoppicture.db " \
    DELETE FROM data; \
    DELETE FROM displays; \
    DELETE FROM pictures; \
    DELETE FROM preferences; \
    DELETE FROM prefs; \
    DELETE FROM spaces; \
    INSERT INTO pictures (space_id, display_id) VALUES (0, null); \
    INSERT INTO data (value) VALUES ('~/zfiles/wallpaper/yes.jpg'); \
    INSERT INTO data (value) VALUES (6000); \
    INSERT INTO data (value) VALUES (5); \
    INSERT INTO data (value) VALUES (0.07); \
    INSERT INTO data (value) VALUES ('198.png'); \
    INSERT INTO data (value) VALUES (1); \
        INSERT INTO pictures (space_id, display_id) VALUES (1, null); \
    INSERT INTO data (value) VALUES ('~/zfiles/wallpaper/purple.jpg'); \
    INSERT INTO data (value) VALUES (6000); \
    INSERT INTO preferences (key, data_id, picture_id) VALUES (2, 3, 1); \
    INSERT INTO preferences (key, data_id, picture_id) VALUES (3, 4, 1); \
    INSERT INTO preferences (key, data_id, picture_id) VALUES (4, 4, 1); \
    INSERT INTO preferences (key, data_id, picture_id) VALUES (5, 4, 1); \
    INSERT INTO preferences (key, data_id, picture_id) VALUES (9, 6, 1); \
    INSERT INTO preferences (key, data_id, picture_id) VALUES (10, 1, 1); \
    INSERT INTO preferences (key, data_id, picture_id) VALUES (11, 2, 1); \
    INSERT INTO preferences (key, data_id, picture_id) VALUES (12, 6, 1); \
    INSERT INTO preferences (key, data_id, picture_id) VALUES (16, 5, 1); \
" && killall Dock
