# 0. Hospital example

Going back to the hospital exercise from exercise0, task 1, we will build logical and physical data models. This is the conceptual data model after we've added the composite entities to take care of many-to-many relationships.

a) Create a logical data model using lucidcharts

b) Identify different keys on the various entities

c) Identify child entities and parent entities. What makes them into parent/child relationships?

d) Create a physical data model using dbdiagram

e) Create a few tables manually, insert given data plus some more, and try to manually link foreign keys to primary keys. Can you satisfy that a doctor can work at several departments and several hospitals?

a) <br> <img src = ../assets/logical_hospital_ERD.png>

assets\logical_hospital_ERD.png

b)

- Table Hospital PK = hospital_id <br>
- Table hospitalDepartment PK = hospitalDepartment_id <br>
- Table Department PK = department_id<br>
- Table Department_doctor PK = departmentDoctor_id<br>
- Table Doctor PK = doctor_id <br>
- Table Hospital_doctor PK = hospitalDoctor_id <br>
- hospital_id and doctor_id = FK in hospitalDoctor <br>
- hospital_id and department_id = FK in HospitalDepartment<br>
- department_id and doctor_id = FK in Department_doctor<br>

c) <br>

- Hospital parent -> HospitalDepartment child <br>
- Department parent -> HospitalDepartment- child<br>
- Doctor parent -> Departmentdoctor Child<br>
- Doctor parent -> HospitalDoctor<br>
- Hospital parent -> hospitaldoctor child<br>
-   Department parent -> Departmentdoctor child <br>

d) <br>
<img src = ../assets/hospital_dbdiagram.png>
