CREATE TABLE `notes` (
  `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `mood_id` INTEGER NOT NULL,
  `date` TEXT NOT NULL,
  `topic` TEXT NOT NULL,
  `body` TEXT NOT NULL,
  FOREIGN KEY (`id`) REFERENCES `note_tags` (`note_id`),
  FOREIGN KEY (`mood_id`) REFERENCES `moods` (`id`)
);
CREATE TABLE `moods` (
  `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `name` TEXT NOT NULL,
  `emoji` TEXT NOT NULL
);
CREATE TABLE `tags` (
  `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `tag` TEXT NOT NULL,
  FOREIGN KEY (`id`) REFERENCES `note_tags` (`tag_id`)
);
CREATE TABLE `note_tags` (`note_id` INTEGER, `tag_id` INTEGER);
--
INSERT INTO `moods`
VALUES (null, "happy", "😁");
INSERT INTO `notes`
VALUES (
    null,
    1,
    "2021-07-20 10:26:00.000",
    "Media Slicing with ffmpeg",
    "Try the following command format: \n\t ffmpeg -i INPUT -ss START -t END -c copy OUTPUT \n where INPUT/OUTPUT are filenames and START/END are seconds (with decimals) or a proper timestamp"
  );
INSERT INTO `tags`
VALUES (null, "ffmpeg");
INSERT INTO `tags`
VALUES (null, "cli");
INSERT INTO `note_tags`
VALUES (1, 1);
INSERT INTO `note_tags`
VALUES (1, 2);