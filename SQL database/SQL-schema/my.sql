TABLE kids{
  id integer 
  name string
  age integer
}
TABLE toys{
  id integer 
  name string
  kid_id integer
}
Ref: "toys"."kid_id" < "kids"."id"