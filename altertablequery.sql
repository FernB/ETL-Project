
	
-- Add primary and foriegn keys

ALTER TABLE "Workersummary"
  ADD CONSTRAINT "pk_Workersummary" 
    PRIMARY KEY ("Year");


ALTER TABLE "Locations"
  ADD CONSTRAINT "pk_Locations" 
    PRIMARY KEY ("Location");


ALTER TABLE "Time"
  ADD CONSTRAINT "pk_Time" 
    PRIMARY KEY ("Time");


ALTER TABLE "Year"
  ADD CONSTRAINT "pk_Year" 
    PRIMARY KEY ("Year");

ALTER TABLE "Perth_UV"
  ADD CONSTRAINT "pk_Perth_UV" 
    PRIMARY KEY ("Date","Time","Location");
	
ALTER TABLE "Sydney_UV"
  ADD CONSTRAINT "pk_Sydney_UV" 
    PRIMARY KEY ("Date","Time","Location");
	
ALTER TABLE "Darwin_UV"
  ADD CONSTRAINT "pk_Darwin_UV" 
    PRIMARY KEY ("Date","Time","Location");
    

    

ALTER TABLE "Perth_UV" ADD CONSTRAINT "fk_Perth_UV_time" FOREIGN KEY("Time")
REFERENCES "Time" ("Time");

ALTER TABLE "Sydney_UV" ADD CONSTRAINT "fk_Sydney_UV_time" FOREIGN KEY("Time")
REFERENCES "Time" ("Time");

ALTER TABLE "Darwin_UV" ADD CONSTRAINT "fk_Darwin_UV_time" FOREIGN KEY("Time")
REFERENCES "Time" ("Time");


ALTER TABLE "Perth_UV" ADD CONSTRAINT "fk_Perth_UV_year" FOREIGN KEY("Year")
REFERENCES "Year" ("Year");

ALTER TABLE "Sydney_UV" ADD CONSTRAINT "fk_Sydney_UV_year" FOREIGN KEY("Year")
REFERENCES "Year" ("Year");

ALTER TABLE "Darwin_UV" ADD CONSTRAINT "fk_Darwin_UV_year" FOREIGN KEY("Year")
REFERENCES "Year" ("Year");

ALTER TABLE "Workersummary" ADD CONSTRAINT "fk_Workersummary_year" FOREIGN KEY("Year")
REFERENCES "Year" ("Year");

ALTER TABLE "Perth_UV" ADD CONSTRAINT "fk_Perth_UV_location" FOREIGN KEY("Location")
REFERENCES "Locations" ("Location");

ALTER TABLE "Sydney_UV" ADD CONSTRAINT "fk_Sydney_UV_location" FOREIGN KEY("Location")
REFERENCES "Locations" ("Location");

ALTER TABLE "Darwin_UV" ADD CONSTRAINT "fk_Darwin_UV_location" FOREIGN KEY("Location")
REFERENCES "Locations" ("Location");

