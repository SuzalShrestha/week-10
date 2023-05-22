Table color{
  id integer
  name text
}
Table music{
  id integer 
  name  text
  type_of_work text 
  instrumental  boolean
  composition_year  integer
  composer  text
  sample blob
}


Ref: "color"."id" < "music"."name"
-- website for data visualization https://dbdiagram.io/