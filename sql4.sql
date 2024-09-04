-- Create Patients Table
CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender CHAR(1),
    address VARCHAR(255)
);

-- Create Diabetes_Records Table
CREATE TABLE Diabetes_Records (
    record_id INT PRIMARY KEY,
    patient_id INT,
    diagnosis_date DATE,
    blood_sugar_level DECIMAL(5, 2),
    complications TEXT,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);

-- Create Healthcare_Providers Table
CREATE TABLE Healthcare_Providers (
    provider_id INT PRIMARY KEY,
    name VARCHAR(100),
    specialty VARCHAR(50),
    contact_info VARCHAR(255)
);

-- Create Appointments Table
CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    provider_id INT,
    appointment_date DATE,
    appointment_type VARCHAR(50),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (provider_id) REFERENCES Healthcare_Providers(provider_id)
);
