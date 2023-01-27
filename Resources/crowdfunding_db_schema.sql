CREATE TABLE "category" (
  "category_id" varchar(10),
  "category" varchar(30),
  PRIMARY KEY ("category_id")
);

CREATE TABLE "subcategory" (
  "subcategory_id" varchar(10),
  "subcategory" varchar(30),
  PRIMARY KEY ("subcategory_id")
);

CREATE TABLE "campaign" (
  "cf_id" int,
  "contact_id" int,
  "company_name" varchar(40),
  "description" varchar(100),
  "goal" numeric,
  "pledged" numeric,
  "outcome" varchar(10),
  "backers_count" int,
  "country" varchar(3),
  "currency" varchar(3),
  "launched_date" date,
  "end_date" date,
  "category_id" varchar(10),
  "subcategory_id" varchar(10),
  PRIMARY KEY ("cf_id"),
  CONSTRAINT "FK_campaign.category_id"
    FOREIGN KEY ("category_id")
      REFERENCES "category"("category_id"),
  CONSTRAINT "FK_campaign.subcategory_id"
    FOREIGN KEY ("subcategory_id")
      REFERENCES "subcategory"("subcategory_id")
);

CREATE TABLE "contacts" (
  "contact_id" int,
  "first_name" varchar(20),
  "last_name" varchar(30),
  "email" varchar(60),
  PRIMARY KEY ("contact_id")
);

