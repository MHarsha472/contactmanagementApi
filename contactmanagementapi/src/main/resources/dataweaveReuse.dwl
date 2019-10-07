%dw 1.0
%output application/java
---
{
FirstName : payload.Identification.FirstName,
LastName : payload.Identification.LastName,
DOB : payload.Identification.DOB,
Gender : payload.Identification.Gender,
Title : payload.Identification.Title,
City: payload.Address.City[0],
State: payload.Address.State[0],
Zipcode: payload.Address.zipcode[0],
Email:(payload.Communication filter ($.type == "email")).value[0],
Phone:(payload.Communication filter ($.type == "cell")).value[0]


}