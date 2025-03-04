<!-- # 1. Convert json-file to tables
''' You have this json data, convert it into three tables: Hospital, Department and Doctor. Fill these tables with data. Do this manually and not programmatically.

{
  "hospital": "Sjukhusstock",
  "address": "Drottninggatan 3, Stockholm",
  "departments": [
    {
      "name": "Kardiologi",
      "doctors": [
        { "id": 1, "name": "Dr. Abra Abrahamson" },
        { "id": 2, "name": "Dr. Erika Eriksson" }
      ]
    },
    {
      "name": "Neurologi",
      "doctors": [{ "id": 3, "name": "Dr. Sven Svensson" }]
    }
  ]
} -->

### Solution

<!-- - identify entities
- identify relationships### --> -->

**Initial naive conceptual ERD**

<img src = '../assets\Exercise_01.png'>

**Initial tables**

 

Hospital

| Hospital_id| name        | address              |
|------------|-------------|----------------------|
| 1          | Sjukhusstock|Drottninggatan 3      |

Department

|department_id| name       | 
|-------------|------------|
|1            |Kardiologi  |
|2            |Neurologi   |

Doctor

|Doctor_id  | name             | department_id| 
|-----------|------------------|--------------|
|1          | Abra Abrahamsson | Kardiologi   |
|2          | Erika Eriksson   | Kardiologi   |
|3          | Sven Svensson    | Neurologi    |

Refined with bridge tables to reflect many-to-many relationships


<img src = "../assets/hospital_ex0.png" width=500>



#Exercise 0 
## 1. Hospital task
### Solution 
Hospital Department

|Hospital_department_id        | hospital_id  | department_id| 
|------------------------------|--------------|--------------|
|1                             | 1            |1             |
|2                             | 1            |2             |

HospitalDoctor

TODO: Left for the reader

DepartmentDoctor

TODO: left for the reader

Test a join

Want information on sjukhusstock and inte departments
- hospital_department can join with department_id on deparment table
and hospital_id on hospital table
- query name from hospital table name from department table

TODO: left for reader: create this sql query
