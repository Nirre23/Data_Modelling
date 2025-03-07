import sqlite3

# Anslut till SQLite-databasen
conn = sqlite3.connect("hospital.db")
cursor = conn.cursor()

# Query to get the hospital and its departments
query = '''
SELECT h.name AS hospital_name, d.name AS department_name
FROM Hospital h
JOIN hospital_department hd ON h.hospital_id = hd.hospital_id
JOIN Department d ON hd.department_id = d.department_id
WHERE h.name = 'Sjukhusstock'
'''

cursor.execute(query)
results = cursor.fetchall()

print("Sjukhusstock and its Departments:")
for row in results:
    print(f"Hospital: {row[0]}, Department: {row[1]}")

# Close the connection
conn.close()