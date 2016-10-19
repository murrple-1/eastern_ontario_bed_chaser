CREATE TABLE "users" IF NOT EXISTS (
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `login` TEXT NOT NULL,
    `password_hash` TEXT NOT NULL,
    `type` INTEGER NOT NULL
);

CREATE TABLE "regions" (
	`id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`name` TEXT NOT NULL
);

CREATE TABLE "facilities" (
	`id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`name` TEXT NOT NULL,
	`regions_id` INTEGER NOT NULL,
	`x` INTEGER NOT NULL,
	`y` INTEGER NOT NULL,
	`number_of_acute_care_beds` INTEGER NOT NULL,
	`number_of_complex_continuing_care_beds` INTEGER NOT NULL,
	`number_of_long_term_care_beds` INTEGER NOT NULL
);

CREATE TABLE "patients" (
	`id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`health_care_number` INTEGER NOT NULL,
	`name` TEXT NOT NULL,
	`required_care_type` INTEGER NOT NULL,
	`receiving_care_facilities_id` INTEGER DEFAULT NULL,
	`receiving_care_type` INTEGER NOT NULL,
	`receiving_care_date_admitted` INTEGER DEFAULT NULL
);

CREATE TABLE "waiting_list_regions_patients_mappings" (
	`regions_id` INTEGER NOT NULL PRIMARY KEY,
	`patients_id` INTEGER NOT NULL PRIMARY KEY,
	`date_added` INTEGER NOT NULL,
	FOREIGN KEY (`regions_id`) REFERENCES "regions" (`id`)
);