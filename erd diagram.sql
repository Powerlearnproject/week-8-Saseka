+------------------+
|    Patients      |
+------------------+
| patient_id (PK)  |
| name             |
| age              |
| gender           |
| address          |
+------------------+
        |
        | 1
        |
        | M
+------------------+
| Diabetes_Records |
+------------------+
| record_id (PK)   |
| patient_id (FK)  |
| diagnosis_date   |
| blood_sugar_level|
| complications    |
+------------------+

        |
        | 1
        |
        | M
+------------------+
|  Appointments    |
+------------------+
| appointment_id (PK)|
| patient_id (FK)   |
| provider_id (FK)  |
| appointment_date  |
| appointment_type  |
+------------------+
        |
        | M
        |
        | 1
+------------------+
| Healthcare_Providers|
+------------------+
| provider_id (PK) |
| name             |
| specialty        |
| contact_info     |
+------------------+
